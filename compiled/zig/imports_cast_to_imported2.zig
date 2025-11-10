// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");
const _imp_hello_world = @import("hello_world.zig");
const _imp_cast_to_imported2 = @import("cast_to_imported2.zig");

pub const ImportsCastToImported2 = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*ImportsCastToImported2) !*ImportsCastToImported2 {
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
    fn _allocator(self: *const ImportsCastToImported2) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *ImportsCastToImported2) !void {
        self.hw = try _imp_hello_world.HelloWorld.create(self._arena, self._io, null, null);
        self.two = try _imp_cast_to_imported2.CastToImported2.create(self._arena, self._io, null, null, self.hw);
    }
    hw: *_imp_hello_world.HelloWorld = undefined,
    two: *_imp_cast_to_imported2.CastToImported2 = undefined,
    _root: ?*ImportsCastToImported2,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
