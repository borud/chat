all: lint gen

lint:
	@buf lint

gen: clean
	@buf generate

publish:
	@buf push

clean:
	@rm -rf pkg

breaking:
	@buf breaking --against "https://github.com/borud/minimum-bsr/archive/main.zip#strip_components=1"

dep:
	@go install google.golang.org/protobuf/cmd/protoc-gen-go@latest
	@go install google.golang.org/grpc/cmd/protoc-gen-go-grpc@latest
	@go install github.com/bufbuild/buf/cmd/buf@latest
