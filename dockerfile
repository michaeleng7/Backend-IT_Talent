# Use a imagem oficial do Node.js 14
FROM node:14

# Diretório de trabalho dentro do contêiner
WORKDIR /app

# Copie os arquivos de package.json e package-lock.json
COPY package*.json ./

# Instale as dependências do projeto
RUN npm install

# Copie o restante do código fonte da aplicação
COPY . .

# Exponha a porta em que o servidor Node.js está escutando
EXPOSE 3000

# Comando para iniciar a aplicação
CMD ["node", "app.js"]
