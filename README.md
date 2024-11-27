# Guide d'utilisation de Docker Compose pour l'hébergement Local de l'Implementation Guide

## Prérequis
- **Docker** et **Docker Compose** doivent être installés sur votre machine.
- Assurez-vous que votre projet [SUSHI](https://github.com/FHIR/sushi?tab=readme-ov-file#sushi) est configuré et que les fichiers nécessaires (comme `Dockerfile` et `docker-compose.yml`) sont présents dans votre répertoire de projet.

## Structure du Projet
Votre projet doit contenir les fichiers et dossiers suivants :
```
project-root/
├── Dockerfile
├── docker-compose.yml
├── input/
│   ├── fsh/
│   │   └── *.fsh
│   └── pagecontent/
│       └── index.md
└── sushi-config.yaml
```

## Fichier `docker-compose.yml`
Le fichier `docker-compose.yml` définit deux services principaux :
- **hl7-fhir-ig** : Service qui construit le projet SUSHI et génère l'IG.
- **nginx** : Service qui héberge l'IG généré localement.

```yaml
services:
  hl7-fhir-ig:
    build:
      context: .
      dockerfile: Dockerfile
    container_name: hl7-fhir-ig
    volumes:
      - .:/app
    tty: true
    command: /bin/sh -c "./updatePublisher.sh && ./genonce.sh"

  hl7-fhir-nginx:
    image: nginx:latest
    container_name: hl7-fhir-nginx
    ports:
      - "8100:80"
    volumes:
      - ./output:/usr/share/nginx/html
    healthcheck:
      test: [ "CMD", "sh", "-c", "[ -d /usr/share/nginx/html ]" ]
      interval: 30s
      timeout: 10s
      retries: 3
      start_period: 10s
    entrypoint: /bin/sh -c "nginx -g 'daemon off;'"
    depends_on:
      - hl7-fhir-ig
```

## Instructions pour utiliser Docker Compose
1. **Créer le dossier `output`**
   Il faut créer le dossier manuellement pour s'assurer que celui-ci as les bonnes permissions.
   ```bash
   mkdir output
   ```

2. **Lancer les services `hl7-fhir-ig` et `hl7-fhir-nginx`**  
   Pour lancer les conteneurs, exécutez la commande suivante:
   ```bash
   docker-compose up -d
   ```

3. **Récupérer le IG Publisher le plus recent**  
   Pour récupérer le IG Publisher, exécutez les commandes suivantes à travers le conteneur `hl7-fhir-ig` :
   ```bash
   docker exec hl7-fhir-ig ./_updatePublisher.sh
   ```
   Cette commande permettent de télécharger le module qui s'occupe de générer le IG.

4. **Générer le dossier de sortie (`output`)**  
   Pour générer le dossier `output`, exécutez les commandes suivantes à travers le conteneur `hl7-fhir-ig` :
   ```bash
   docker exec hl7-fhir-ig ./_genonce.sh
   ```
   Cette commande permettent de générer le guide d'implémentation (fichiers html).  
   **NOTE:** _Vous devrez exécuter cette commande à chaque modification effectué dans les fichiers FSH ou de template pour que le résultat se réflète sur la page web._

5. **Accéder à l'Implementation Guide**  
   Une fois les services lancés, accédez à votre IG en ouvrant un navigateur et en allant à l'adresse suivante :
   ```
   http://localhost:8100
   ```

6. **Vérification des logs**
   Pour vérifier les journaux des services, utilisez :
   ```bash
   docker-compose logs -f
   ```
   Cette commande permet de voir les journaux des services en temps réel pour déboguer d'éventuels problèmes.

7. **Arrêter les services**
   Pour arrêter les services, utilisez la commande suivante :
   ```bash
   docker-compose down
   ```
   Cela arrête et supprime les conteneurs, mais conserve les images Docker.

## Personnalisation
### **Modification des ports**
Si le port 8100 est déjà utilisé, modifiez la section `ports` dans le service NGINX.
### **Ajout de contenu**
Ajoutez ou modifiez les fichiers dans `input/fsh` et `input/pagecontent` pour mettre à jour le contenu de l'IG.

## Notes complémentaires
- Assurez-vous que le dossier `output` est correctement généré par SUSHI pour voir vos modification.
- Le service NGINX est configuré avec un healthcheck pour s'assurer que le dossier `output` est présent avant de démarrer le service.
