// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const BitsByteAlignedEofBe = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*BitsByteAlignedEofBe) !*BitsByteAlignedEofBe {
        const self = try _arena.allocator().create(BitsByteAlignedEofBe);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const BitsByteAlignedEofBe) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *BitsByteAlignedEofBe) !void {
        self.prebuf = try self._io.readBytes(self._allocator(), 8);
        self.bits = try self._io.readBitsIntBe(31);
    }
    prebuf: []const u8 = undefined,
    bits: u64 = undefined,
    _root: ?*BitsByteAlignedEofBe,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
