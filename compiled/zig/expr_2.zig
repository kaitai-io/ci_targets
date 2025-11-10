// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const Expr2 = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*Expr2) !*Expr2 {
        const self = try _arena.allocator().create(Expr2);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const Expr2) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *Expr2) !void {
        self.str1 = try ModStr.create(self._arena, self._io, self, self._root);
        self.str2 = try ModStr.create(self._arena, self._io, self, self._root);
    }
    pub const ModStr = struct {
        pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*Expr2, _root: ?*Expr2) !*ModStr {
            const self = try _arena.allocator().create(ModStr);
            self.* = .{
                ._arena = _arena,
                ._io = _io,
                ._parent = _parent,
                ._root = _root,
            };
            try self._read();
            return self;
        }
        fn _allocator(self: *const ModStr) _imp_std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *ModStr) !void {
            self.len_orig = try self._io.readU2le();
            self.str = (try _imp_kaitai_struct.KaitaiStream.bytesToStr(self._allocator(), try self._io.readBytes(self._allocator(), (try self.lenMod())), "UTF-8"));
            const _raw_rest = try self._io.readBytes(self._allocator(), 3);
            const _io__raw_rest = try self._allocator().create(_imp_kaitai_struct.KaitaiStream);
            _io__raw_rest.* = _imp_kaitai_struct.KaitaiStream.fromBytes(_raw_rest);
            self.rest = try Tuple.create(self._arena, _io__raw_rest, self, self._root);
        }
        pub fn char5(self: *ModStr) ![]const u8 {
            if (self._m_char5) |_v|
                return _v;
            var _v: []const u8 = undefined;
            const _pos = self._io.pos();
            try self._io.seek(5);
            _v = (try _imp_kaitai_struct.KaitaiStream.bytesToStr(self._allocator(), try self._io.readBytes(self._allocator(), 1), "ASCII"));
            try self._io.seek(_pos);
            self._m_char5 = _v;
            return _v;
        }
        pub fn lenMod(self: *ModStr) !i32 {
            if (self._m_len_mod) |_v|
                return _v;
            var _v: i32 = undefined;
            _v = self.len_orig - 3;
            self._m_len_mod = _v;
            return _v;
        }
        pub fn tuple5(self: *ModStr) !*Tuple {
            if (self._m_tuple5) |_v|
                return _v;
            var _v: *Tuple = undefined;
            const _pos = self._io.pos();
            try self._io.seek(5);
            _v = try Tuple.create(self._arena, self._io, self, self._root);
            try self._io.seek(_pos);
            self._m_tuple5 = _v;
            return _v;
        }
        _m_char5: ?[]const u8 = null,
        _m_len_mod: ?i32 = null,
        _m_tuple5: ?*Tuple = null,
        len_orig: u16 = undefined,
        str: []const u8 = undefined,
        rest: *Tuple = undefined,
        _root: ?*Expr2,
        _parent: ?*Expr2,
        _arena: *_imp_std.heap.ArenaAllocator,
        _io: *_imp_kaitai_struct.KaitaiStream,
    };
    pub const Tuple = struct {
        pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*Expr2.ModStr, _root: ?*Expr2) !*Tuple {
            const self = try _arena.allocator().create(Tuple);
            self.* = .{
                ._arena = _arena,
                ._io = _io,
                ._parent = _parent,
                ._root = _root,
            };
            try self._read();
            return self;
        }
        fn _allocator(self: *const Tuple) _imp_std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *Tuple) !void {
            self.byte0 = try self._io.readU1();
            self.byte1 = try self._io.readU1();
            self.byte2 = try self._io.readU1();
        }
        pub fn avg(self: *Tuple) !i32 {
            if (self._m_avg) |_v|
                return _v;
            var _v: i32 = undefined;
            _v = (self.byte1 + self.byte2) / 2;
            self._m_avg = _v;
            return _v;
        }
        _m_avg: ?i32 = null,
        byte0: u8 = undefined,
        byte1: u8 = undefined,
        byte2: u8 = undefined,
        _root: ?*Expr2,
        _parent: ?*Expr2.ModStr,
        _arena: *_imp_std.heap.ArenaAllocator,
        _io: *_imp_kaitai_struct.KaitaiStream,
    };
    pub fn str1Avg(self: *Expr2) !i32 {
        if (self._m_str1_avg) |_v|
            return _v;
        var _v: i32 = undefined;
        _v = (try self.str1.rest.avg());
        self._m_str1_avg = _v;
        return _v;
    }
    pub fn str1Byte1(self: *Expr2) !u8 {
        if (self._m_str1_byte1) |_v|
            return _v;
        var _v: u8 = undefined;
        _v = self.str1.rest.byte1;
        self._m_str1_byte1 = _v;
        return _v;
    }
    pub fn str1Char5(self: *Expr2) ![]const u8 {
        if (self._m_str1_char5) |_v|
            return _v;
        var _v: []const u8 = undefined;
        _v = (try self.str1.char5());
        self._m_str1_char5 = _v;
        return _v;
    }
    pub fn str1Len(self: *Expr2) !i32 {
        if (self._m_str1_len) |_v|
            return _v;
        var _v: i32 = undefined;
        _v = self.str1.str.len;
        self._m_str1_len = _v;
        return _v;
    }
    pub fn str1LenMod(self: *Expr2) !i32 {
        if (self._m_str1_len_mod) |_v|
            return _v;
        var _v: i32 = undefined;
        _v = (try self.str1.lenMod());
        self._m_str1_len_mod = _v;
        return _v;
    }
    pub fn str1Tuple5(self: *Expr2) !*Tuple {
        if (self._m_str1_tuple5) |_v|
            return _v;
        var _v: *Tuple = undefined;
        _v = (try self.str1.tuple5());
        self._m_str1_tuple5 = _v;
        return _v;
    }
    pub fn str2Tuple5(self: *Expr2) !*Tuple {
        if (self._m_str2_tuple5) |_v|
            return _v;
        var _v: *Tuple = undefined;
        _v = (try self.str2.tuple5());
        self._m_str2_tuple5 = _v;
        return _v;
    }
    _m_str1_avg: ?i32 = null,
    _m_str1_byte1: ?u8 = null,
    _m_str1_char5: ?[]const u8 = null,
    _m_str1_len: ?i32 = null,
    _m_str1_len_mod: ?i32 = null,
    _m_str1_tuple5: ?*Tuple = null,
    _m_str2_tuple5: ?*Tuple = null,
    str1: *ModStr = undefined,
    str2: *ModStr = undefined,
    _root: ?*Expr2,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
