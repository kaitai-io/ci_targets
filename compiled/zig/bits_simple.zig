// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const BitsSimple = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*BitsSimple) !*BitsSimple {
        const self = try _arena.allocator().create(BitsSimple);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const BitsSimple) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *BitsSimple) !void {
        self.byte_1 = try self._io.readBitsIntBe(8);
        self.byte_2 = try self._io.readBitsIntBe(8);
        self.bits_a = try self._io.readBitsIntBe(1) != 0;
        self.bits_b = try self._io.readBitsIntBe(3);
        self.bits_c = try self._io.readBitsIntBe(4);
        self.large_bits_1 = try self._io.readBitsIntBe(10);
        self.spacer = try self._io.readBitsIntBe(3);
        self.large_bits_2 = try self._io.readBitsIntBe(11);
        self.normal_s2 = try self._io.readS2be();
        self.byte_8_9_10 = try self._io.readBitsIntBe(24);
        self.byte_11_to_14 = try self._io.readBitsIntBe(32);
        self.byte_15_to_19 = try self._io.readBitsIntBe(40);
        self.byte_20_to_27 = try self._io.readBitsIntBe(64);
    }
    pub fn testIfB1(self: *BitsSimple) !?i8 {
        if (self._m_test_if_b1) |_v|
            return _v;
        var _v: ?i8 = null;
        if (self.bits_a == false) {
            _v = 123;
        }
        self._m_test_if_b1 = _v;
        return _v;
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
    _root: ?*BitsSimple,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
