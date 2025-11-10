// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const BitsSimpleLe = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*BitsSimpleLe) !*BitsSimpleLe {
        const self = try _arena.allocator().create(BitsSimpleLe);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const BitsSimpleLe) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *BitsSimpleLe) !void {
        self.byte_1 = try self._io.readBitsIntLe(8);
        self.byte_2 = try self._io.readBitsIntLe(8);
        self.bits_a = try self._io.readBitsIntLe(1) != 0;
        self.bits_b = try self._io.readBitsIntLe(3);
        self.bits_c = try self._io.readBitsIntLe(4);
        self.large_bits_1 = try self._io.readBitsIntLe(10);
        self.spacer = try self._io.readBitsIntLe(3);
        self.large_bits_2 = try self._io.readBitsIntLe(11);
        self.normal_s2 = try self._io.readS2be();
        self.byte_8_9_10 = try self._io.readBitsIntLe(24);
        self.byte_11_to_14 = try self._io.readBitsIntLe(32);
        self.byte_15_to_19 = try self._io.readBitsIntLe(40);
        self.byte_20_to_27 = try self._io.readBitsIntLe(64);
    }
    pub fn testIfB1(self: *BitsSimpleLe) !?i8 {
        if (self._m_test_if_b1) |_v|
            return _v;
        var _v: i8 = undefined;
        var _n = true;
        if (self.bits_a == true) {
            _n = false;
            _v = 123;
        }
        if (_n) {
            self._m_test_if_b1 = @as(?i8, null);
            return null;
        } else {
            self._m_test_if_b1 = _v;
            return _v;
        }
    }
    _m_test_if_b1: ??i8 = null,
    byte_1: u64 = undefined,
    byte_2: u64 = undefined,
    bits_a: bool = undefined,
    bits_b: u64 = undefined,
    bits_c: u64 = undefined,
    large_bits_1: u64 = undefined,
    spacer: u64 = undefined,
    large_bits_2: u64 = undefined,
    normal_s2: i16 = undefined,
    byte_8_9_10: u64 = undefined,
    byte_11_to_14: u64 = undefined,
    byte_15_to_19: u64 = undefined,
    byte_20_to_27: u64 = undefined,
    _root: ?*BitsSimpleLe,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
