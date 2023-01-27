load("@bazel_gazelle//:deps.bzl", "go_repository")

def go_dependencies():
    go_repository(
        name = "com_github_martinjungblut_go_cryptsetup",
        importpath = "github.com/martinjungblut/go-cryptsetup",
        patches = ["//thirdparty/com_github_martinjungblut_go_cryptsetup:com_github_martinjungblut_go_cryptsetup.patch"],  # keep
        sum = "h1:YDjLk3wsL5ZLhLC4TIwIvT2NkSCAdAV6pzzZaRfj4jk=",
        version = "v0.0.0-20220520180014-fd0874fd07a6",
    )
