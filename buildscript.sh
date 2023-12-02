# Baue das Docker-Image
docker build -t nodejs-docker-webpage .

# Führe den Docker-Container aus und verbinde Port 3000 im Container mit Port 8080 auf deinem Host
docker run -d -p 8080:3000 -e NODE_VERSION=21 nodejs-docker-webpage