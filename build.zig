const std = @import("std");

const AppName = "my_app";

pub fn build(b: *std.Build) void {
    const dbgExe = b.addExecutable(.{
        .name = AppName ++ ".debug",
        .root_source_file = b.path("hello-world.zig"),
        .target = b.host,
        .optimize = .Debug,
    });
    dbgExe.linkLibC();
    b.installArtifact(dbgExe);

    const relExe = b.addExecutable(.{
        .name = AppName ++ ".release",
        .root_source_file = b.path("hello-world.zig"),
        .target = b.host,
        .optimize = .ReleaseFast,
    });
    relExe.linkLibC();
    b.installArtifact(relExe);
}
