load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository")

def oci_deps():
    git_repository(
        name = "rules_oci_bootstrap",
        remote = "https://github.com/DataDog/rules_oci_bootstrap.git",
        commit = "72cfa06badf8ae7cad3f4ab5e9ac6821ac663687",
        shallow_since = "1670247744 +0100",
    )