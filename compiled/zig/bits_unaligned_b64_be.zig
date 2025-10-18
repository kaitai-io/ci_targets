// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const BitsUnalignedB64Be = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*BitsUnalignedB64Be) !*BitsUnalignedB64Be {
        const self = try _arena.allocator().create(BitsUnalignedB64Be);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const BitsUnalignedB64Be) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *BitsUnalignedB64Be) !void {
        self.a = try self._io.readBitsIntBe(1) != 0;
        self.b = try self._io.readBitsIntBe(64);
        self.c = try self._io.readBitsIntBe(7);
    }
    a: bool = undefined,
    b: u64 = undefined,
    c: u64 = undefined,
    _root: ?*BitsUnalignedB64Be,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
