// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const BitsByteAligned = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*BitsByteAligned) !*BitsByteAligned {
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
    fn _allocator(self: *const BitsByteAligned) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *BitsByteAligned) !void {
        self.one = try self._io.readBitsIntBe(6);
        self.byte_1 = try self._io.readU1();
        self.two = try self._io.readBitsIntBe(3);
        self.three = try self._io.readBitsIntBe(1) != 0;
        self.byte_2 = try self._io.readBytes(self._allocator(), 1);
        self.four = try self._io.readBitsIntBe(14);
        const _raw_byte_3 = try self._io.readBytes(self._allocator(), 3);
        const _io__raw_byte_3 = try self._allocator().create(_imp_kaitai_struct.KaitaiStream);
        _io__raw_byte_3.* = _imp_kaitai_struct.KaitaiStream.fromBytes(_raw_byte_3);
        self.byte_3 = try Foo.create(self._arena, _io__raw_byte_3, self, self._root);
        self.full_byte = try self._io.readBitsIntBe(8);
        self.byte_4 = try self._io.readU1();
        self.five = try self._io.readBitsIntBe(22);
        self.bytes_term = try self._io.readBytesTerm(self._allocator(), 69, true, true, true);
        self.six = try self._io.readBitsIntBe(8);
    }
    pub const Foo = struct {
        pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*BitsByteAligned, _root: ?*BitsByteAligned) !*Foo {
            const self = try _arena.allocator().create(Foo);
            self.* = .{
                ._arena = _arena,
                ._io = _io,
                ._parent = _parent,
                ._root = _root,
            };
            try self._read();
            return self;
        }
        fn _allocator(self: *const Foo) _imp_std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *Foo) !void {
            self.inner = try self._io.readBitsIntBe(19);
        }
        inner: u64 = undefined,
        _root: ?*BitsByteAligned,
        _parent: ?*BitsByteAligned,
        _arena: *_imp_std.heap.ArenaAllocator,
        _io: *_imp_kaitai_struct.KaitaiStream,
    };
    one: u64 = undefined,
    byte_1: u8 = undefined,
    two: u64 = undefined,
    three: bool = undefined,
    byte_2: []const u8 = undefined,
    four: u64 = undefined,
    byte_3: *Foo = undefined,
    full_byte: u64 = undefined,
    byte_4: u8 = undefined,
    five: u64 = undefined,
    bytes_term: []const u8 = undefined,
    six: u64 = undefined,
    _root: ?*BitsByteAligned,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
