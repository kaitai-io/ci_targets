// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const ExprIntDiv = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*ExprIntDiv) !*ExprIntDiv {
        const self = try _arena.allocator().create(ExprIntDiv);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const ExprIntDiv) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *ExprIntDiv) !void {
        self.int_u = try self._io.readU4le();
        self.int_s = try self._io.readS4le();
    }
    pub fn divNegConst(self: *ExprIntDiv) !i32 {
        if (self._m_div_neg_const) |_v|
            return _v;
        var _v: i32 = undefined;
        _v = -9837 / 13;
        self._m_div_neg_const = _v;
        return _v;
    }
    pub fn divNegSeq(self: *ExprIntDiv) !i32 {
        if (self._m_div_neg_seq) |_v|
            return _v;
        var _v: i32 = undefined;
        _v = self.int_s / 13;
        self._m_div_neg_seq = _v;
        return _v;
    }
    pub fn divPosConst(self: *ExprIntDiv) !i32 {
        if (self._m_div_pos_const) |_v|
            return _v;
        var _v: i32 = undefined;
        _v = 9837 / 13;
        self._m_div_pos_const = _v;
        return _v;
    }
    pub fn divPosSeq(self: *ExprIntDiv) !i32 {
        if (self._m_div_pos_seq) |_v|
            return _v;
        var _v: i32 = undefined;
        _v = self.int_u / 13;
        self._m_div_pos_seq = _v;
        return _v;
    }
    _m_div_neg_const: ?i32 = null,
    _m_div_neg_seq: ?i32 = null,
    _m_div_pos_const: ?i32 = null,
    _m_div_pos_seq: ?i32 = null,
    int_u: u32 = undefined,
    int_s: i32 = undefined,
    _root: ?*ExprIntDiv,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
