FROM golang:latest
ARG APP_FOLDER

#app folder inside the container
COPY ${APP_FOLDER} /go/src/app
WORKDIR /go/src/app


#glide for vendor packages
RUN curl https://glide.sh/get | sh
RUN glide create --non-interactive
RUN glide install

#build app
RUN go-wrapper download
RUN go-wrapper install

#with gin for live reload
RUN cd ..
RUN go get github.com/codegangsta/gin
RUN cd ${WORKDIR}
CMD gin run
#ENTRYPOINT /go/bin/app
