// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const Expr1 = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*Expr1) !*Expr1 {
        const self = try _arena.allocator().create(Expr1);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const Expr1) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *Expr1) !void {
        self.len_of_1 = try self._io.readU2le();
        self.str1 = kaitai_struct.KaitaiStream.bytesToStr(try self._io.readBytes(self._allocator(), (try self.lenOf1Mod())), "ASCII");
    }
    pub fn lenOf1Mod(self: *Expr1) !i32 {
        if (self._m_len_of_1_mod) |_v|
            return _v;
        var _v: i32 = undefined;
        _v = self.len_of_1 - 2;
        self._m_len_of_1_mod = _v;
        return _v;
    }
    pub fn str1Len(self: *Expr1) !i32 {
        if (self._m_str1_len) |_v|
            return _v;
        var _v: i32 = undefined;
        _v = self.str1.len;
        self._m_str1_len = _v;
        return _v;
    }
    _m_len_of_1_mod: ?i32 = null,
    _m_str1_len: ?i32 = null,
    len_of_1: u16 = undefined,
    str1: []u8 = undefined,
    _root: ?*Expr1,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
