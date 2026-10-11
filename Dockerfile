FROM node:24-bookworm-slim

WORKDIR /app
RUN chown node:node /app

COPY --chown=node:node package.json ./
COPY --chown=node:node libs ./libs
USER node

# The upstream workspace intentionally does not track package-lock.json.
RUN npm install

COPY --chown=node:node . .

# Build the component package before serving the local demo application.
RUN npm run build:ui:lite

EXPOSE 4200
CMD ["npm", "start", "--", "app", "--host", "0.0.0.0", "--port", "4200"]
