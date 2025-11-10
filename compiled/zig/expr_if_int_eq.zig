// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const ExprIfIntEq = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*ExprIfIntEq) !*ExprIfIntEq {
        const self = try _arena.allocator().create(ExprIfIntEq);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const ExprIfIntEq) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *ExprIfIntEq) !void {
        self.skip = try self._io.readBytes(self._allocator(), 2);
        self.seq = try self._io.readS2le();
        if (true) {
            self.seq_if = try self._io.readS2le();
        }
    }
    pub fn calc(self: *ExprIfIntEq) !i32 {
        if (self._m_calc) |_v|
            return _v;
        var _v: i32 = undefined;
        _v = 16705;
        self._m_calc = _v;
        return _v;
    }
    pub fn calcEqCalcIf(self: *ExprIfIntEq) !bool {
        if (self._m_calc_eq_calc_if) |_v|
            return _v;
        var _v: bool = undefined;
        _v = (try self.calc()) == (try self.calcIf());
        self._m_calc_eq_calc_if = _v;
        return _v;
    }
    pub fn calcEqLit(self: *ExprIfIntEq) !bool {
        if (self._m_calc_eq_lit) |_v|
            return _v;
        var _v: bool = undefined;
        _v = (try self.calc()) == 16705;
        self._m_calc_eq_lit = _v;
        return _v;
    }
    pub fn calcEqSeqIf(self: *ExprIfIntEq) !bool {
        if (self._m_calc_eq_seq_if) |_v|
            return _v;
        var _v: bool = undefined;
        _v = (try self.calc()) == self.seq_if;
        self._m_calc_eq_seq_if = _v;
        return _v;
    }
    pub fn calcIf(self: *ExprIfIntEq) !?i32 {
        if (self._m_calc_if) |_v|
            return _v;
        var _v: i32 = undefined;
        var _n = true;
        if (true) {
            _n = false;
            _v = 16705;
        }
        if (_n) {
            self._m_calc_if = @as(?i32, null);
            return null;
        } else {
            self._m_calc_if = _v;
            return _v;
        }
    }
    pub fn calcIfEqLit(self: *ExprIfIntEq) !bool {
        if (self._m_calc_if_eq_lit) |_v|
            return _v;
        var _v: bool = undefined;
        _v = (try self.calcIf()) == 16705;
        self._m_calc_if_eq_lit = _v;
        return _v;
    }
    pub fn calcIfEqSeqIf(self: *ExprIfIntEq) !bool {
        if (self._m_calc_if_eq_seq_if) |_v|
            return _v;
        var _v: bool = undefined;
        _v = (try self.calcIf()) == self.seq_if;
        self._m_calc_if_eq_seq_if = _v;
        return _v;
    }
    pub fn seqEqCalc(self: *ExprIfIntEq) !bool {
        if (self._m_seq_eq_calc) |_v|
            return _v;
        var _v: bool = undefined;
        _v = self.seq == (try self.calc());
        self._m_seq_eq_calc = _v;
        return _v;
    }
    pub fn seqEqCalcIf(self: *ExprIfIntEq) !bool {
        if (self._m_seq_eq_calc_if) |_v|
            return _v;
        var _v: bool = undefined;
        _v = self.seq == (try self.calcIf());
        self._m_seq_eq_calc_if = _v;
        return _v;
    }
    pub fn seqEqLit(self: *ExprIfIntEq) !bool {
        if (self._m_seq_eq_lit) |_v|
            return _v;
        var _v: bool = undefined;
        _v = self.seq == 16705;
        self._m_seq_eq_lit = _v;
        return _v;
    }
    pub fn seqEqSeqIf(self: *ExprIfIntEq) !bool {
        if (self._m_seq_eq_seq_if) |_v|
            return _v;
        var _v: bool = undefined;
        _v = self.seq == self.seq_if;
        self._m_seq_eq_seq_if = _v;
        return _v;
    }
    pub fn seqIfEqLit(self: *ExprIfIntEq) !bool {
        if (self._m_seq_if_eq_lit) |_v|
            return _v;
        var _v: bool = undefined;
        _v = self.seq_if == 16705;
        self._m_seq_if_eq_lit = _v;
        return _v;
    }
    _m_calc: ?i32 = null,
    _m_calc_eq_calc_if: ?bool = null,
    _m_calc_eq_lit: ?bool = null,
    _m_calc_eq_seq_if: ?bool = null,
    _m_calc_if: ??i32 = null,
    _m_calc_if_eq_lit: ?bool = null,
    _m_calc_if_eq_seq_if: ?bool = null,
    _m_seq_eq_calc: ?bool = null,
    _m_seq_eq_calc_if: ?bool = null,
    _m_seq_eq_lit: ?bool = null,
    _m_seq_eq_seq_if: ?bool = null,
    _m_seq_if_eq_lit: ?bool = null,
    skip: []const u8 = undefined,
    seq: i16 = undefined,
    seq_if: ?i16 = null,
    _root: ?*ExprIfIntEq,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
