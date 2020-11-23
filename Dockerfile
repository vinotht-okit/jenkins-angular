# using apache2 server
# stage 1
FROM node:14 as build-step-0

# RUN apt-get update && apt-get install -y curl
# RUN curl -sL https://deb.nodesource.com/setup_12.x | bash -
# RUN apt-get update && apt-get install -y nodejs

# RUN apt-get update -qq && apt-get install -y build-essential nodejs

WORKDIR /app
COPY package.json ./
COPY package-lock.json ./
RUN npm install
# RUN npm audit fix
COPY . .
RUN npm run build

# stage 2
FROM httpd:2.4.41-alpine
COPY --from=build-step-0 /app/dist/jenkins-angular /usr/local/apache2/htdocs/

# # using nginx server
# # stage 1
# FROM node:12 as build-step-0
# WORKDIR /app
# COPY package.json ./
# RUN npm install
# COPY . .
# RUN npm run build --prod

# # stage 2
# FROM nginx:1.16.1-alpine as prod-stage
# COPY --from=build-step-0 /app/dist/ok4sign-client /usr/share/nginx/html
# EXPOSE 80
# CMD ["nginx", "-g", "daemon off;"]
