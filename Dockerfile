FROM node:18-alpine

# Install necessary packages and fonts for Java
RUN apk add --no-cache bash curl openjdk11 git fontconfig ttf-dejavu ruby ruby-dev build-base

# Install Bundler and Jekyll for IG generation
RUN gem install bundler jekyll

# Install SUSHI for FHIR Shorthand
RUN npm install -g fsh-sushi

USER node

# Set the working directory
WORKDIR /app

ENV HOST=0.0.0.0