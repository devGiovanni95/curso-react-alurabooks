# imagem que vamos usar de base
FROM node:20
# para qual pasta
WORKDIR /app
# O que vamos copiar e para onde
COPY package.json .
# Instalando dependencias
RUN npm install
# expondo porta
EXPOSE 3000
# copiar tudo  para o nosso diretorio app
COPY . .
# comando para iniciar o serviço 
ENTRYPOINT npm start