# 🚀 Strapi Docker Deployment (Local)

This project demonstrates how to containerize and run a Strapi application locally using Docker. It includes building a Docker image, running the container, and accessing the Strapi admin panel.

## Project Structure
```
strapi-deploy/
├── config/
├── src/
├── public/
├── package.json
├── yarn.lock
├── Dockerfile
├── .env
└── README.md
```
## Dockerfile

Create a file named `Dockerfile` in project root:

```dockerfile
FROM node:18-alpine

WORKDIR /app

COPY package.json yarn.lock ./

RUN yarn install

COPY . .

RUN yarn build

EXPOSE 1337

CMD ["yarn", "start"]
```

---
## Environment Variables (.env)
Create `.env` file:

```env
HOST=0.0.0.0
PORT=1337

APP_KEYS=key1,key2,key3,key4
API_TOKEN_SALT=randomtoken123
ADMIN_JWT_SECRET=adminsecret123
JWT_SECRET=jwtsecret123
```

---

- We do not have to put the host of the local machine.

## Build Docker Image
```bash
docker build -t strapi .
```

Verify:

```bash
docker images
```
## Run Container
```bash
docker run -d -p 1337:1337 --name strapi strapi
```
## Access Application

```
http://localhost:1337/admin
```

# Loom Video
https://www.loom.com/share/8211c1c5fe1349dda76a437ec0662c41












