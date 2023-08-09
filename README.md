⚠️WIP⚠️
# GSLoC APi

GSLoC is a open source Global Server Load Balancing (GSLB) solution.

The API repository contains all protobuf and grpc related files and generation using [buf.build](https://buf.build/).

You can see the api docs at [docs/docs.md](/docs/docs.md).

## Structure

- Models is in [/gsloc/api](/gsloc/api)
- Api call is in [/gsloc/services](/gsloc/services)

## Generate code

1. Download [buf command line](https://buf.build/)
2. Set env var `export BUF_CACHE_DIR="$(pwd)/.buf-cache"`
3. Run `buf generate`
4. You can now see python generated code in `../gsloc-python-sdk` and go code generated in `../gsloc-go-sdk`

## Schemas

You can find schemas in [docs folder](/docs), doc in graphml format can be updated with [yed](https://yed.yworks.com)

## Other GSLoC repositories 

- [gsloc](https://github.com/orange-cloudfoundry/gsloc): GSLoC server implementation.
- [gsloc-api](https://github.com/orange-cloudfoundry/gsloc-api): Api definition in protobuf and grpc with code generation tools and architectural docs and doc api.
- [gsloc-go-sdk](https://github.com/orange-cloudfoundry/gsloc-go-sdk): Go sdk for gsloc api used in gsloc implementation.
