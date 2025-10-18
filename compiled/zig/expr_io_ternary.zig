// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const ExprIoTernary = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*ExprIoTernary) !*ExprIoTernary {
        const self = try _arena.allocator().create(ExprIoTernary);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const ExprIoTernary) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *ExprIoTernary) !void {
        self.flag = try self._io.readU1();
        self._raw_obj1 = try self._io.readBytes(self._allocator(), 4);
        const _io__raw_obj1 = try self._allocator().create(kaitai_struct.KaitaiStream);
        _io__raw_obj1.* = kaitai_struct.KaitaiStream.fromBytes(self._raw_obj1);
        self.obj1 = try One.create(self._arena, _io__raw_obj1, self, self._root);
        self._raw_obj2 = try self._io.readBytes(self._allocator(), 8);
        const _io__raw_obj2 = try self._allocator().create(kaitai_struct.KaitaiStream);
        _io__raw_obj2.* = kaitai_struct.KaitaiStream.fromBytes(self._raw_obj2);
        self.obj2 = try Two.create(self._arena, _io__raw_obj2, self, self._root);
    }
    pub const One = struct {
        pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*ExprIoTernary, _root: ?*ExprIoTernary) !*One {
            const self = try _arena.allocator().create(One);
            self.* = .{
                ._arena = _arena,
                ._io = _io,
                ._parent = _parent,
                ._root = _root,
            };
            try self._read();
            return self;
        }
        fn _allocator(self: *const One) std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *One) !void {
            self.one = try self._io.readU1();
        }
        one: u8 = undefined,
        _root: ?*ExprIoTernary,
        _parent: ?*ExprIoTernary,
        _arena: *std.heap.ArenaAllocator,
        _io: *kaitai_struct.KaitaiStream,
    };
    pub const Two = struct {
        pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*ExprIoTernary, _root: ?*ExprIoTernary) !*Two {
            const self = try _arena.allocator().create(Two);
            self.* = .{
                ._arena = _arena,
                ._io = _io,
                ._parent = _parent,
                ._root = _root,
            };
            try self._read();
            return self;
        }
        fn _allocator(self: *const Two) std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *Two) !void {
            self.two = try self._io.readU1();
        }
        two: u8 = undefined,
        _root: ?*ExprIoTernary,
        _parent: ?*ExprIoTernary,
        _arena: *std.heap.ArenaAllocator,
        _io: *kaitai_struct.KaitaiStream,
    };
    pub fn oneOrTwoIo(self: *ExprIoTernary) !*kaitai_struct.KaitaiStream {
        if (self._m_one_or_two_io) |_v|
            return _v;
        var _v: *kaitai_struct.KaitaiStream = undefined;
        _v = (if (self.flag == 64) self.obj1 else self.obj2)._io;
        self._m_one_or_two_io = _v;
        return _v;
    }
    pub fn oneOrTwoIoSize1(self: *ExprIoTernary) !i32 {
        if (self._m_one_or_two_io_size1) |_v|
            return _v;
        var _v: i32 = undefined;
        _v = (try (if (self.flag == 64) self.obj1 else self.obj2)._io.size());
        self._m_one_or_two_io_size1 = _v;
        return _v;
    }
    pub fn oneOrTwoIoSize2(self: *ExprIoTernary) !i32 {
        if (self._m_one_or_two_io_size2) |_v|
            return _v;
        var _v: i32 = undefined;
        _v = (try (try self.oneOrTwoIo()).size());
        self._m_one_or_two_io_size2 = _v;
        return _v;
    }
    pub fn oneOrTwoIoSizeAdd3(self: *ExprIoTernary) !i32 {
        if (self._m_one_or_two_io_size_add_3) |_v|
            return _v;
        var _v: i32 = undefined;
        _v = (try (if (self.flag == 64) self.obj1 else self.obj2)._io.size()) + 3;
        self._m_one_or_two_io_size_add_3 = _v;
        return _v;
    }
    pub fn oneOrTwoObj(self: *ExprIoTernary) !*anyopaque {
        if (self._m_one_or_two_obj) |_v|
            return _v;
        var _v: *anyopaque = undefined;
        _v = (if (self.flag == 64) self.obj1 else self.obj2);
        self._m_one_or_two_obj = _v;
        return _v;
    }
    _m_one_or_two_io: ?*kaitai_struct.KaitaiStream = null,
    _m_one_or_two_io_size1: ?i32 = null,
    _m_one_or_two_io_size2: ?i32 = null,
    _m_one_or_two_io_size_add_3: ?i32 = null,
    _m_one_or_two_obj: ?*anyopaque = null,
    flag: u8 = undefined,
    obj1: *One = undefined,
    obj2: *Two = undefined,
    _root: ?*ExprIoTernary,
    _parent: ?*anyopaque,
    _raw_obj1: []u8 = undefined,
    _raw_obj2: []u8 = undefined,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
