FROM golang:1.23.2-alpine
# Installera GO
# kompilera vår kod -> EXE-fil
# kör EXE-fil
# go test kommer köra test i dockerfilen

COPY . .
RUN go get -d -v

RUN go build -o /app/cmd/main

# EXPOSE 8080

ENTRYPOINT [ "/app/cmd/main" ]
# Körs när containern kickar igång