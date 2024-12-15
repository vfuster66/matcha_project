#!/bin/sh

# Appliquer les migrations Prisma
pnpm prisma migrate dev --name init

# Lancer le serveur backend
pnpm run dev
