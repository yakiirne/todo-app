FROM node:12-alpine
WORKDIR /app
COPY . .
RUN yarn install --production
CMD ["node", "/app/src/index.js"]
RUN apk add --no-cache git
RUN git clone -q https://github.com/yakiirne/todo-app.git
WORKDIR /todo-app
RUN yarn install --production 
CMD ["note ", "/src/index.js"]
