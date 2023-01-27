def platforms():
    native.platform(
        name = "linux_arm64",
        constraint_values = [
            "@platforms//os:linux",
            "@platforms//cpu:arm64",
        ],
    )

    native.platform(
        name = "linux_amd64",
        constraint_values = [
            "@platforms//os:linux",
            "@platforms//cpu:x86_64",
        ],
    )

    CMD = "$(CRANE_BIN) pull thesayyn/debian:oci $@ --format=oci --platform={platform}"

    native.genrule(
        name = "base",
        outs = ["layout"],
        cmd = select(
            {
                "@platforms//cpu:arm64": CMD.format(platform = "linux/arm64"),
                "@platforms//cpu:x86_64": CMD.format(platform = "linux/amd64"),
            },
            no_match_error = "Please build on a arm64 or amd64 host",
        ),
        message = select({
            "@platforms//cpu:arm64": "Pulling base image for linux/arm64",
            "@platforms//cpu:x86_64": "Pulling base image for linux/amd64",
        }),
        output_to_bindir = True,
        toolchains = [
            "@oci_crane_toolchains//:current_toolchain",
        ],
    )
