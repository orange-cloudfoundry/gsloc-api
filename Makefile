
update:
	buf mod update
	cd vendor && buf mod update

build:
	buf build
	cd vendor && buf build

generate:
	buf generate -v
	cd vendor && buf generate -v

#protoset-cli:
#	mkdir -p ../lbaas-cli/protoset
#	buf build -o ../lbaas-cli/protoset/protoset.bin
