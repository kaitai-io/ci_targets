// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const BitsSeqEndianCombo = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*BitsSeqEndianCombo) !*BitsSeqEndianCombo {
        const self = try _arena.allocator().create(BitsSeqEndianCombo);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const BitsSeqEndianCombo) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *BitsSeqEndianCombo) !void {
        self.be1 = try self._io.readBitsIntBe(6);
        self.be2 = try self._io.readBitsIntBe(10);
        self.le3 = try self._io.readBitsIntLe(8);
        self.be4 = try self._io.readBitsIntBe(8);
        self.le5 = try self._io.readBitsIntLe(5);
        self.le6 = try self._io.readBitsIntLe(6);
        self.le7 = try self._io.readBitsIntLe(5);
        self.be8 = try self._io.readBitsIntBe(1) != 0;
    }
    be1: u64 = undefined,
    be2: u64 = undefined,
    le3: u64 = undefined,
    be4: u64 = undefined,
    le5: u64 = undefined,
    le6: u64 = undefined,
    le7: u64 = undefined,
    be8: bool = undefined,
    _root: ?*BitsSeqEndianCombo,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
