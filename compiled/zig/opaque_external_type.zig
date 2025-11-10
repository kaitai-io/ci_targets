// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");
const _imp_hello_world = @import("hello_world.zig");

pub const OpaqueExternalType = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*OpaqueExternalType) !*OpaqueExternalType {
        const self = try _arena.allocator().create(OpaqueExternalType);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const OpaqueExternalType) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *OpaqueExternalType) !void {
        self.hw = try _imp_hello_world.HelloWorld.create(self._arena, self._io, null, null);
    }
    hw: *_imp_hello_world.HelloWorld = undefined,
    _root: ?*OpaqueExternalType,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
