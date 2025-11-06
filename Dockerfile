#Use Node.js Image which is Public
FROM node:18

#Wroking directory
WORKDIR /app

#Copy the Package.jsonb and package-lock.json
COPY package*.json ./

#Install dependencies
RUN npm install

#Copy the rest code 
COPY . .

#Expose the port 
EXPOSE 3000

#Start app
CMD ["npm", "run", "dev"]
