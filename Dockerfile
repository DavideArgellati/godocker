FROM golang:1.6

ENV APPNAME sampleapi
ENV APPDIR /go/src/${APPNAME}


COPY . ${APPDIR}
WORKDIR ${APPDIR}
RUN go get github.com/codegangsta/gin
# Run the ${APPNAME} command by default when the container starts.
#ENTRYPOINT /go/bin/${APPNAME}
RUN go get
EXPOSE 8080
EXPOSE 3000
# Now tell Docker what command to run when the container starts

