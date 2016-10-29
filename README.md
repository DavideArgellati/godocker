#Sample app with Docker Container#
 - dev dockerfile with gin for live reloading
 = glide for vendor packages

#Usage#
- copy *-dev or *-prod env files in a new file .env (docker compose will read from it)
- copy Dockerfile into your app
- docker-compose up ( add -d for background exec)

How it works:
- Containers
 - dev is with gin live reload and ports used are 3000 and app listen on 3001
 - prod uses port 80 and app is executed directly instead of going through gin proxy
- we share the app folder as volume so files are in sync inside the container at /go/src
- on dev gin act as a proxy listening on port 3000 and forwarding to 3001 by default
- when gin detect a file change rebuilds the app

#Notes#
we can't use env variables in dockerfile
because defines that the enviornment and shouldn't be host dependent
we can use them on docker run which is what docker-compose is for
