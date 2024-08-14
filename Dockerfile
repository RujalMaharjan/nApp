# Stage 1: Build
FROM node:14-alpine AS build
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY app.js ./

# Stage 2: Runtime
FROM node:14-alpine
WORKDIR /app
COPY --from=build /app /app
ENV PORT=80
CMD ["node", "app.js"]
