// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const TypeTernary2ndFalsy = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*TypeTernary2ndFalsy) !*TypeTernary2ndFalsy {
        const self = try _arena.allocator().create(TypeTernary2ndFalsy);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const TypeTernary2ndFalsy) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *TypeTernary2ndFalsy) !void {
        self.int_truthy = try self._io.readU1();
        self.ut = try Foo.create(self._arena, self._io, self, self._root);
        self.int_array = try self._allocator().create(std.ArrayList(u8));
        self.int_array.* = .empty;
        for (0..2) |i| {
            {
                const _maybe_unused = i;
                _ = _maybe_unused;
            }
            try self.int_array.append(self._allocator(), try self._io.readU1());
        }
        self.int_array_empty = try self._allocator().create(std.ArrayList(u8));
        self.int_array_empty.* = .empty;
        for (0..0) |i| {
            {
                const _maybe_unused = i;
                _ = _maybe_unused;
            }
            try self.int_array_empty.append(self._allocator(), try self._io.readU1());
        }
    }
    pub const Foo = struct {
        pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*TypeTernary2ndFalsy, _root: ?*TypeTernary2ndFalsy) !*Foo {
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
        fn _allocator(self: *const Foo) std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *Foo) !void {
            self.m = try self._io.readU1();
        }
        m: u8 = undefined,
        _root: ?*TypeTernary2ndFalsy,
        _parent: ?*TypeTernary2ndFalsy,
        _arena: *std.heap.ArenaAllocator,
        _io: *kaitai_struct.KaitaiStream,
    };
    pub fn nullUt(self: *TypeTernary2ndFalsy) !?*Foo {
        if (self._m_null_ut) |_v|
            return _v;
        var _v: ?*Foo = null;
        if (false) {
            _v = self.ut;
        }
        self._m_null_ut = _v;
        return _v;
    }
    pub fn t(self: *TypeTernary2ndFalsy) !bool {
        if (self._m_t) |_v|
            return _v;
        var _v: bool = undefined;
        _v = true;
        self._m_t = _v;
        return _v;
    }
    pub fn vFalse(self: *TypeTernary2ndFalsy) !bool {
        if (self._m_v_false) |_v|
            return _v;
        var _v: bool = undefined;
        _v = (if ((try self.t())) false else true);
        self._m_v_false = _v;
        return _v;
    }
    pub fn vFloatNegZero(self: *TypeTernary2ndFalsy) !f64 {
        if (self._m_v_float_neg_zero) |_v|
            return _v;
        var _v: f64 = undefined;
        _v = (if ((try self.t())) -0.0 else -2.72);
        self._m_v_float_neg_zero = _v;
        return _v;
    }
    pub fn vFloatZero(self: *TypeTernary2ndFalsy) !f64 {
        if (self._m_v_float_zero) |_v|
            return _v;
        var _v: f64 = undefined;
        _v = (if ((try self.t())) 0.0 else 3.14);
        self._m_v_float_zero = _v;
        return _v;
    }
    pub fn vIntArrayEmpty(self: *TypeTernary2ndFalsy) !*std.ArrayList(u8) {
        if (self._m_v_int_array_empty) |_v|
            return _v;
        var _v: *std.ArrayList(u8) = undefined;
        _v = (if ((try self.t())) self.int_array_empty else self.int_array);
        self._m_v_int_array_empty = _v;
        return _v;
    }
    pub fn vIntNegZero(self: *TypeTernary2ndFalsy) !i32 {
        if (self._m_v_int_neg_zero) |_v|
            return _v;
        var _v: i32 = undefined;
        _v = (if ((try self.t())) 0 else -20);
        self._m_v_int_neg_zero = _v;
        return _v;
    }
    pub fn vIntZero(self: *TypeTernary2ndFalsy) !i8 {
        if (self._m_v_int_zero) |_v|
            return _v;
        var _v: i8 = undefined;
        _v = (if ((try self.t())) 0 else 10);
        self._m_v_int_zero = _v;
        return _v;
    }
    pub fn vNullUt(self: *TypeTernary2ndFalsy) !*Foo {
        if (self._m_v_null_ut) |_v|
            return _v;
        var _v: *Foo = undefined;
        _v = (if ((try self.t())) (try self.nullUt()) else self.ut);
        self._m_v_null_ut = _v;
        return _v;
    }
    pub fn vStrEmpty(self: *TypeTernary2ndFalsy) ![]u8 {
        if (self._m_v_str_empty) |_v|
            return _v;
        var _v: []u8 = undefined;
        _v = (if ((try self.t())) "" else "kaitai");
        self._m_v_str_empty = _v;
        return _v;
    }
    pub fn vStrWZero(self: *TypeTernary2ndFalsy) ![]u8 {
        if (self._m_v_str_w_zero) |_v|
            return _v;
        var _v: []u8 = undefined;
        _v = (if ((try self.t())) "0" else "30");
        self._m_v_str_w_zero = _v;
        return _v;
    }
    _m_null_ut: ??*Foo = null,
    _m_t: ?bool = null,
    _m_v_false: ?bool = null,
    _m_v_float_neg_zero: ?f64 = null,
    _m_v_float_zero: ?f64 = null,
    _m_v_int_array_empty: ?*std.ArrayList(u8) = null,
    _m_v_int_neg_zero: ?i32 = null,
    _m_v_int_zero: ?i8 = null,
    _m_v_null_ut: ?*Foo = null,
    _m_v_str_empty: ?[]u8 = null,
    _m_v_str_w_zero: ?[]u8 = null,
    int_truthy: u8 = undefined,
    ut: *Foo = undefined,
    int_array: *std.ArrayList(u8) = undefined,
    int_array_empty: *std.ArrayList(u8) = undefined,
    _root: ?*TypeTernary2ndFalsy,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
