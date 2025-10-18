// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const BitsByteAligned = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*BitsByteAligned) !*BitsByteAligned {
        const self = try _arena.allocator().create(BitsByteAligned);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const BitsByteAligned) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *BitsByteAligned) !void {
        self.one = try self._io.readBitsIntBe(6);
        self.byte_1 = try self._io.readU1();
        self.two = try self._io.readBitsIntBe(3);
        self.three = try self._io.readBitsIntBe(1) != 0;
        self.byte_2 = try self._io.readU1();
        self.four = try self._io.readBitsIntBe(14);
        self.byte_3 = try self._io.readBytes(self._allocator(), 1);
        self.full_byte = try self._io.readBitsIntBe(8);
        self.byte_4 = try self._io.readU1();
    }
    one: u64 = undefined,
    byte_1: u8 = undefined,
    two: u64 = undefined,
    three: bool = undefined,
    byte_2: u8 = undefined,
    four: u64 = undefined,
    byte_3: []u8 = undefined,
    full_byte: u64 = undefined,
    byte_4: u8 = undefined,
    _root: ?*BitsByteAligned,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
