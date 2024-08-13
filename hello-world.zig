//! hello-world.zig: Where your Zig journey starts!

const std = @import("std");
const stderr = std.debug;

/// Change me!
pub fn main() void {
    stderr.print("Hello World!", .{});
}
