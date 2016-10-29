#Sample app with Docker Container#
 - docker with gin for live reloading
 - glide for vendor packages

#Usage#
- docker-compose up ( add -d for background exec)

How it works:
- Containers
 - gin act as a proxy on port 3000 and forward to 3001 which the app listen to
 - if you don't want live reload just set 80 or whatever in docker-compose and Dockerfile
 - we share the app folder as volume so files are in sync inside the container at /go/src