FROM node:18
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY .env ./
COPY . .
EXPOSE 8080
CMD ["npm", "start"]