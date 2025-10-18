// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");
const hello_world = @import("hello_world.zig");
const cast_to_imported = @import("cast_to_imported.zig");

pub const ImportsCastToImported = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*ImportsCastToImported) !*ImportsCastToImported {
        const self = try _arena.allocator().create(ImportsCastToImported);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const ImportsCastToImported) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *ImportsCastToImported) !void {
        self.hw = try hello_world.HelloWorld.create(self._arena, self._io, null, null);
        self.two = try cast_to_imported.CastToImported.create(self._arena, self._io, null, null, self.hw);
    }
    hw: *hello_world.HelloWorld = undefined,
    two: *cast_to_imported.CastToImported = undefined,
    _root: ?*ImportsCastToImported,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
