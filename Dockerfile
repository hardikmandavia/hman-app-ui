FROM node:alpine
WORKDIR /app
COPY . .
RUN npm install --production
EXPOSE 3080
CMD npx tsc


# docker run --rm -d -p 3000:3000 hardikmandavia/hman-app-api
# kubectl create deployment --image hardikmandavia/hma-app-api node-app
# kubectl expose deployment node-app --type NodePort --port 3000  

# kubectl get node -o wide //// check nodes