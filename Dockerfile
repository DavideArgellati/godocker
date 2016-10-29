FROM golang:latest

#app folder inside the container
COPY . /go/src/app
WORKDIR /go/src/app

#glide for vendor packages
RUN curl https://glide.sh/get | sh
RUN glide create --non-interactive
RUN glide install

#build app
RUN go-wrapper download
RUN go-wrapper install

#with gin for live reload
RUN go get github.com/codegangsta/gin
CMD gin run
ENV PORT 3001 #app will listen on this
EXPOSE 3000

#without gin
#ENV PORT 80
#EXPOSE 80
#ENTRYPOINT /go/bin/app
