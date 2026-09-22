FROM node:18-alpine
WORKDIR /app
COPY package*.json ./
RUN npm ci 2>/dev/null || npm install --legacy-peer-deps
COPY . .
ENV NODE_OPTIONS=--openssl-legacy-provider
# portal exige todas as libs + tem arquivos faltando; app só precisa da lib ui
RUN npm run build:ui
EXPOSE 4200
CMD ["sh", "-c", "npx ng serve app --host 0.0.0.0 --port 4200"]
