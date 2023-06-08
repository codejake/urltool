GOCMD=go
BINARY_NAME=urltool

build:
	mkdir -p ./bin
	
	# macOS arm64
	GOOS=darwin GOARCH=arm64 $(GOCMD) build -o ./bin/$(BINARY_NAME).arm64 .

	# macOS amd64
	GOOS=darwin GOARCH=amd64 $(GOCMD) build -o ./bin/$(BINARY_NAME).amd64 .

	# Windows amd64
	GOOS=windows GOARCH=amd64 $(GOCMD) build -o bin/$(BINARY_NAME).exe .

	# Linux amd64
	GOOS=linux GOARCH=amd64 $(GOCMD) build -o bin/$(BINARY_NAME).linux .