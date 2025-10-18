// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const BitsUnalignedB32Le = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*BitsUnalignedB32Le) !*BitsUnalignedB32Le {
        const self = try _arena.allocator().create(BitsUnalignedB32Le);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const BitsUnalignedB32Le) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *BitsUnalignedB32Le) !void {
        self.a = try self._io.readBitsIntLe(1) != 0;
        self.b = try self._io.readBitsIntLe(32);
        self.c = try self._io.readBitsIntLe(7);
    }
    a: bool = undefined,
    b: u64 = undefined,
    c: u64 = undefined,
    _root: ?*BitsUnalignedB32Le,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
