// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");
const hello_world = @import("hello_world.zig");
const cast_to_imported2 = @import("cast_to_imported2.zig");

pub const ImportsCastToImported2 = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*ImportsCastToImported2) !*ImportsCastToImported2 {
        const self = try _arena.allocator().create(ImportsCastToImported2);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const ImportsCastToImported2) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *ImportsCastToImported2) !void {
        self.hw = try hello_world.HelloWorld.create(self._arena, self._io, null, null);
        self.two = try cast_to_imported2.CastToImported2.create(self._arena, self._io, null, null, self.hw);
    }
    hw: *hello_world.HelloWorld = undefined,
    two: *cast_to_imported2.CastToImported2 = undefined,
    _root: ?*ImportsCastToImported2,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
