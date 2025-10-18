// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const BitsByteAlignedEofLe = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*BitsByteAlignedEofLe) !*BitsByteAlignedEofLe {
        const self = try _arena.allocator().create(BitsByteAlignedEofLe);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const BitsByteAlignedEofLe) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *BitsByteAlignedEofLe) !void {
        self.prebuf = try self._io.readBytes(self._allocator(), 8);
        self.bits = try self._io.readBitsIntLe(31);
    }
    prebuf: []u8 = undefined,
    bits: u64 = undefined,
    _root: ?*BitsByteAlignedEofLe,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
