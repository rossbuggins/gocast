.PHONY: all gocast test

all:
	$(MAKE) gocast

gocast:
	go build -mod=vendor .

debug:
	go build -mod=vendor -race .

test:
	go test -v -race -short -failfast -mod=vendor ./...

linux:
	CGO_ENABLED=0 GOOS=linux GOARCH=arm64 go build -o gocast -mod=vendor .

linuxany:
	CGO_ENABLED=0 go build -o gocast -mod=vendor .
