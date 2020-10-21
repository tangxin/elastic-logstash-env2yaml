build:
	go build -o out/env2yaml-$(GOOS)-$(GOARCH) .

buildx:
	GOOS=linux GOARCH=amd64 make build
	GOOS=linux GOARCH=arm64 make build

clean:
	rm -rf out
