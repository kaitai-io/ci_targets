// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const IntegersMinMax = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*IntegersMinMax) !*IntegersMinMax {
        const self = try _arena.allocator().create(IntegersMinMax);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const IntegersMinMax) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *IntegersMinMax) !void {
        self.unsigned_min = try Unsigned.create(self._arena, self._io, self, self._root);
        self.unsigned_max = try Unsigned.create(self._arena, self._io, self, self._root);
        self.signed_min = try Signed.create(self._arena, self._io, self, self._root);
        self.signed_max = try Signed.create(self._arena, self._io, self, self._root);
    }
    pub const Signed = struct {
        pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*IntegersMinMax, _root: ?*IntegersMinMax) !*Signed {
            const self = try _arena.allocator().create(Signed);
            self.* = .{
                ._arena = _arena,
                ._io = _io,
                ._parent = _parent,
                ._root = _root,
            };
            try self._read();
            return self;
        }
        fn _allocator(self: *const Signed) std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *Signed) !void {
            self.s1 = try self._io.readS1();
            self.s2le = try self._io.readS2le();
            self.s4le = try self._io.readS4le();
            self.s8le = try self._io.readS8le();
            self.s2be = try self._io.readS2be();
            self.s4be = try self._io.readS4be();
            self.s8be = try self._io.readS8be();
        }
        s1: i8 = undefined,
        s2le: i16 = undefined,
        s4le: i32 = undefined,
        s8le: i64 = undefined,
        s2be: i16 = undefined,
        s4be: i32 = undefined,
        s8be: i64 = undefined,
        _root: ?*IntegersMinMax,
        _parent: ?*IntegersMinMax,
        _arena: *std.heap.ArenaAllocator,
        _io: *kaitai_struct.KaitaiStream,
    };
    pub const Unsigned = struct {
        pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*IntegersMinMax, _root: ?*IntegersMinMax) !*Unsigned {
            const self = try _arena.allocator().create(Unsigned);
            self.* = .{
                ._arena = _arena,
                ._io = _io,
                ._parent = _parent,
                ._root = _root,
            };
            try self._read();
            return self;
        }
        fn _allocator(self: *const Unsigned) std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *Unsigned) !void {
            self.u1 = try self._io.readU1();
            self.u2le = try self._io.readU2le();
            self.u4le = try self._io.readU4le();
            self.u8le = try self._io.readU8le();
            self.u2be = try self._io.readU2be();
            self.u4be = try self._io.readU4be();
            self.u8be = try self._io.readU8be();
        }
        u1: u8 = undefined,
        u2le: u16 = undefined,
        u4le: u32 = undefined,
        u8le: u64 = undefined,
        u2be: u16 = undefined,
        u4be: u32 = undefined,
        u8be: u64 = undefined,
        _root: ?*IntegersMinMax,
        _parent: ?*IntegersMinMax,
        _arena: *std.heap.ArenaAllocator,
        _io: *kaitai_struct.KaitaiStream,
    };
    unsigned_min: *Unsigned = undefined,
    unsigned_max: *Unsigned = undefined,
    signed_min: *Signed = undefined,
    signed_max: *Signed = undefined,
    _root: ?*IntegersMinMax,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
