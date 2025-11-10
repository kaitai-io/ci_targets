// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const ExprMod = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*ExprMod) !*ExprMod {
        const self = try _arena.allocator().create(ExprMod);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const ExprMod) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *ExprMod) !void {
        self.int_u = try self._io.readU4le();
        self.int_s = try self._io.readS4le();
    }
    pub fn modNegConst(self: *ExprMod) !i32 {
        if (self._m_mod_neg_const) |_v|
            return _v;
        var _v: i32 = undefined;
        _v = @mod(-9837, 13);
        self._m_mod_neg_const = _v;
        return _v;
    }
    pub fn modNegSeq(self: *ExprMod) !i32 {
        if (self._m_mod_neg_seq) |_v|
            return _v;
        var _v: i32 = undefined;
        _v = @mod(self.int_s, 13);
        self._m_mod_neg_seq = _v;
        return _v;
    }
    pub fn modPosConst(self: *ExprMod) !i32 {
        if (self._m_mod_pos_const) |_v|
            return _v;
        var _v: i32 = undefined;
        _v = @mod(9837, 13);
        self._m_mod_pos_const = _v;
        return _v;
    }
    pub fn modPosSeq(self: *ExprMod) !i32 {
        if (self._m_mod_pos_seq) |_v|
            return _v;
        var _v: i32 = undefined;
        _v = @mod(self.int_u, 13);
        self._m_mod_pos_seq = _v;
        return _v;
    }
    _m_mod_neg_const: ?i32 = null,
    _m_mod_neg_seq: ?i32 = null,
    _m_mod_pos_const: ?i32 = null,
    _m_mod_pos_seq: ?i32 = null,
    int_u: u32 = undefined,
    int_s: i32 = undefined,
    _root: ?*ExprMod,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
