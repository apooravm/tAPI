APP_NAME := ./bin/app.exe

tidy:
	@echo "tidying up..."
	go mod tidy
	go mod vendor

install:
	@echo "installing deps..."
	go mod download

build:
	@echo "building..."
	@go build -o ${APP_NAME} ./src/main.go

run: tidy build
	@echo "running the binary..."
	@${APP_NAME}

dev: build
	@echo "running the binary..."
	@${APP_NAME}