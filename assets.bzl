load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_file")

def assets():
    http_file(
        name = "gopher",
        sha256 = "01e681348f508b6f2e9c4fd70230af419ac5734f08e98434e4bf0b733fa7312b",
        url = "https://go.dev/blog/gopher/prototype.jpg",
        downloaded_file_path = "gopher.jpg",
    )
