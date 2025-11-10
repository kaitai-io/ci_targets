// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const BitsUnalignedB64Le = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*BitsUnalignedB64Le) !*BitsUnalignedB64Le {
        const self = try _arena.allocator().create(BitsUnalignedB64Le);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const BitsUnalignedB64Le) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *BitsUnalignedB64Le) !void {
        self.a = try self._io.readBitsIntLe(1) != 0;
        self.b = try self._io.readBitsIntLe(64);
        self.c = try self._io.readBitsIntLe(7);
    }
    a: bool = undefined,
    b: u64 = undefined,
    c: u64 = undefined,
    _root: ?*BitsUnalignedB64Le,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
