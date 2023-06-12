GOCMD=go
BINARY_NAME=urltool

build:
	mkdir -p ./bin
	
	rm bin/*
	
	# macOS arm64
	GOOS=darwin GOARCH=arm64 $(GOCMD) build -o ./bin/$(BINARY_NAME).macos-arm64 .

	# macOS amd64
	GOOS=darwin GOARCH=amd64 $(GOCMD) build -o ./bin/$(BINARY_NAME).macos-amd64 .

	# Windows amd64
	GOOS=windows GOARCH=amd64 $(GOCMD) build -o bin/$(BINARY_NAME).exe .

	# Linux amd64
	GOOS=linux GOARCH=amd64 $(GOCMD) build -o bin/$(BINARY_NAME).linux .

install:
	cp ./bin/$(BINARY_NAME).macos-amd64 ~/bin/$(BINARY_NAME)
