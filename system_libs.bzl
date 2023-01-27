def system_libs():
    native.new_local_repository(
        name = "cryptsetup",
        build_file = "@//thirdparty/cryptsetup:BUILD.cryptsetup",
        path = "/usr",
    )
