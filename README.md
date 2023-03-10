## Prerequisites

One of:
- [Bazel 6.0](https://bazel.build/)
- Bazelisk

## Misc

```
bazel query ...
bazel build --config linux_amd64_static //...
```

## C / C++

```
bazel build --config linux_amd64 //hello_c:hello
ldd bazel-bin/hello_c/hello
file bazel-bin/hello_c/hello
bazel build --config linux_arm64 //hello_c:hello
file bazel-bin/hello_c/hello
bazel build --config darwin_arm64 //hello_cc:hello
```

## Go

```
bazel build --config linux_amd64 //hello_go:hello
bazel run --config linux_amd64 //hello_go:hello
bazel build --config linux_amd64 //hello_cgo:hello
bazel run --config linux_amd64 //hello_cgo:hello
```

## Web service

```
bazel build --config linux_amd64_static //hello_microservice:hello
docker load --input $(bazel cquery --output=files //hello_microservice:hello)
docker run -it --rm -p 8080:80 hello_microservice
# open http://localhost:8080
```
