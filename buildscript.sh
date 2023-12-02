# Baue das Docker-Image
docker build -t nodejs-docker-webpage --progress=plain .

# Führe den Docker-Container aus und verbinde Port 8080 im Container mit einem freien Port auf deinem Host
docker run -d -p 8080:3000 nodejs-docker-webpage