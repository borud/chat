# Minimal BSR

This is a minimal example of using the [buf.build](https://buf.build) *Buf Schema Registry* (BSR) to maintain an protobuffer and/or gRPC API.  This
example is going to evolve a bit as I learn more about how to use *buf.build*, but we are going to try to keep it minimal.

## Prerequisites

If you have Go installed and set up correctly on your system.  If you have Go installed you can execute the command:

```shell
make dep
```

which will install the latest version of the `buf` command in your `$GOPATH/bin` directory.

If you do not have Go installed you can check out [the installation instructions on ](https://docs.buf.build/installation)

## Linting and building

If you just want to run both linting and code generation you can just use the default target in the makefile by running:

```shell
make
```

The other build targets are:

- `gen` for generating the code
- `clean` for removing the generated code
- `lint` to run linting
- `breaking` to check if you are making any changes that will break with the version on the current master branch.

You can either use the Makefile to do your work with `make` or you can use it as documentation for how you perform various operations.
