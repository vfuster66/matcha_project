FROM node:current-alpine

# Installer OpenSSL
RUN apk add --no-cache openssl

# Définir le répertoire de travail
WORKDIR /usr/src/app

# Copier les fichiers nécessaires pour installer Prisma
COPY package.json pnpm-lock.yaml ./

# Installer pnpm
RUN npm install -g pnpm

# Installer les dépendances localement
RUN pnpm install

# Copier tout le reste des fichiers
COPY . .

# Commande par défaut pour lancer Prisma Studio
CMD ["pnpm", "prisma", "studio"]
