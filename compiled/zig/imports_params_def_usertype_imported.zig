// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");
const hello_world = @import("hello_world.zig");
const params_def_usertype_imported = @import("params_def_usertype_imported.zig");

pub const ImportsParamsDefUsertypeImported = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*ImportsParamsDefUsertypeImported) !*ImportsParamsDefUsertypeImported {
        const self = try _arena.allocator().create(ImportsParamsDefUsertypeImported);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const ImportsParamsDefUsertypeImported) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *ImportsParamsDefUsertypeImported) !void {
        self.hw = try hello_world.HelloWorld.create(self._arena, self._io, null, null);
        self.two = try params_def_usertype_imported.ParamsDefUsertypeImported.create(self._arena, self._io, null, null, self.hw);
    }
    hw: *hello_world.HelloWorld = undefined,
    two: *params_def_usertype_imported.ParamsDefUsertypeImported = undefined,
    _root: ?*ImportsParamsDefUsertypeImported,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
