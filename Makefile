.PHONY: build clean deploy

build:
	env GOOS=linux GOARCH=amd64 go build -ldflags="-s -w" -o bin/aginx-linux-amd64 main.go
	env GOOS=darwin GOARCH=amd64 go build -ldflags="-s -w" -o bin/aginx-mac-amd64 main.go
clean:
	rm -rf ./bin