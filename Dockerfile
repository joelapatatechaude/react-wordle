# syntax = docker/dockerfile:1

FROM node:18.12.1-alpine3.15
WORKDIR /app
COPY . .
#COPY package-lock.json package.json ./
RUN npm install

RUN npm run build

EXPOSE 3000

CMD ["npm", "start"]


#COPY --from=prod_builder /app/build /usr/share/nginx/html/react-wordle
#COPY docker/build_system.sh .
#RUN ./build_system.sh && rm ./build_system.sh
### port use by Nginx within docker network.
#EXPOSE 8080
#USER reactle
