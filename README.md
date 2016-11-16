#Sample app with Docker Container
 - fresh for live reloading
 - glide for vendor packages

#Usage
- docker-compose up ( add -d for background exec)

#How it works:
 - we share the app folder as volume so files are in sync inside the container at /go/src
 - fresh watch over file changes events to rebuild the app, docker might have some issues with that on windows and older docker versions make sure to use the latest
 - a gin branch is available "withgin" if you prefer that solution
 - percona for mysql persistence 
 - nginx server for frontend stuff like angular
