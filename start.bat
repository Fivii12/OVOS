@echo off
echo Building Docker image...
docker build -t 2048-game-image .

echo Processing first container...
docker run -d --name 2048-game-1 -p 8080:8080 2048-game-image

echo Processing second container...
docker run -d --name 2048-game-2 -p 8081:8080 2048-game-image

echo Both containers running
