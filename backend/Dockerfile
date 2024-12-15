FROM node:current-alpine

# Installez OpenSSL et les bibliothèques nécessaires
RUN apk add --no-cache openssl libffi

WORKDIR /usr/src/app

# Installez pnpm et les dépendances
COPY package.json pnpm-lock.yaml ./
RUN npm install -g pnpm
RUN pnpm install
RUN pnpm install @types/express @types/node

COPY . .

EXPOSE 4000

COPY entrypoint.sh /usr/src/app/entrypoint.sh
CMD ["/usr/src/app/entrypoint.sh"]

