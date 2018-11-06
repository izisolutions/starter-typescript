.DEFAULT_GOAL := help

clean: ## Remove building folders
clean:
	rm -rf node_modules/ dist/ build/

yarn: ## Install yarn packages
yarn:
	yarn install

build: ## Create build & logs folders
build:
	mkdir build
	mkdir build/logs

compile: ## Compile
compile:
	yarn tsc

init: ## Init files
init:
	cp .env.dist .env
	yarn install

move: ## Move files to ship away
move: build/ app/ dist/ node_modules/ path-bootstrap.js package.json tsconfig.json
	cp -r app/ build/app
	mv dist/ build
	mv node_modules/ build
	cp path-bootstrap.js package.json tsconfig.json build

production: ## Build for production
production: clean yarn compile build move

install: ## Yarn install
install: clean yarn

test: ## Start local tests
test:
	yarn test

start: ## Starts docker for dev
start:
	docker-compose up

help:
	@grep -E '(^[a-zA-Z_-]+:.*?##.*$$)|(^##)' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[32m%-30s\033[0m %s\n", $$1, $$2}' | sed -e 's/\[32m##/[33m/'
