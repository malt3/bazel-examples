load("@com_github_datadog_rules_oci//oci:defs.bzl", "oci_pull")

def pull_base_images():
    oci_pull(
        name = "distroless",
        registry = "gcr.io",
        repository = "distroless/static-debian11",
        digest = "sha256:5bda5a482de9b13160c061a3fd8665eecf8e35f5ed78e324dafdcdb11cf6d5da",
    )