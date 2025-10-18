// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const CombineStr = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*CombineStr) !*CombineStr {
        const self = try _arena.allocator().create(CombineStr);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const CombineStr) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *CombineStr) !void {
        self.str_term = kaitai_struct.KaitaiStream.bytesToStr(try self._io.readBytesTerm(self._allocator(), 124, false, true, true), "ASCII");
        self.str_limit = kaitai_struct.KaitaiStream.bytesToStr(try self._io.readBytes(self._allocator(), 4), "ASCII");
        self.str_eos = kaitai_struct.KaitaiStream.bytesToStr(try self._io.readBytesFull(self._allocator()), "ASCII");
    }
    pub fn calcBytes(self: *CombineStr) ![]u8 {
        if (self._m_calc_bytes) |_v|
            return _v;
        var _v: []u8 = undefined;
        _v = &[_]u8{ 98, 97, 122 };
        self._m_calc_bytes = _v;
        return _v;
    }
    pub fn calcOrCalcBytes(self: *CombineStr) ![]u8 {
        if (self._m_calc_or_calc_bytes) |_v|
            return _v;
        var _v: []u8 = undefined;
        _v = (if (false) (try self.strCalc()) else (try self.strCalcBytes()));
        self._m_calc_or_calc_bytes = _v;
        return _v;
    }
    pub fn eosOrCalc(self: *CombineStr) ![]u8 {
        if (self._m_eos_or_calc) |_v|
            return _v;
        var _v: []u8 = undefined;
        _v = (if (false) self.str_eos else (try self.strCalc()));
        self._m_eos_or_calc = _v;
        return _v;
    }
    pub fn eosOrCalcBytes(self: *CombineStr) ![]u8 {
        if (self._m_eos_or_calc_bytes) |_v|
            return _v;
        var _v: []u8 = undefined;
        _v = (if (true) self.str_eos else (try self.strCalcBytes()));
        self._m_eos_or_calc_bytes = _v;
        return _v;
    }
    pub fn limitOrCalc(self: *CombineStr) ![]u8 {
        if (self._m_limit_or_calc) |_v|
            return _v;
        var _v: []u8 = undefined;
        _v = (if (false) self.str_limit else (try self.strCalc()));
        self._m_limit_or_calc = _v;
        return _v;
    }
    pub fn limitOrCalcBytes(self: *CombineStr) ![]u8 {
        if (self._m_limit_or_calc_bytes) |_v|
            return _v;
        var _v: []u8 = undefined;
        _v = (if (true) self.str_limit else (try self.strCalcBytes()));
        self._m_limit_or_calc_bytes = _v;
        return _v;
    }
    pub fn limitOrEos(self: *CombineStr) ![]u8 {
        if (self._m_limit_or_eos) |_v|
            return _v;
        var _v: []u8 = undefined;
        _v = (if (true) self.str_limit else self.str_eos);
        self._m_limit_or_eos = _v;
        return _v;
    }
    pub fn strCalc(self: *CombineStr) ![]u8 {
        if (self._m_str_calc) |_v|
            return _v;
        var _v: []u8 = undefined;
        _v = "bar";
        self._m_str_calc = _v;
        return _v;
    }
    pub fn strCalcBytes(self: *CombineStr) ![]u8 {
        if (self._m_str_calc_bytes) |_v|
            return _v;
        var _v: []u8 = undefined;
        _v = kaitai_struct.KaitaiStream.bytesToStr((try self.calcBytes()), "ASCII");
        self._m_str_calc_bytes = _v;
        return _v;
    }
    pub fn termOrCalc(self: *CombineStr) ![]u8 {
        if (self._m_term_or_calc) |_v|
            return _v;
        var _v: []u8 = undefined;
        _v = (if (true) self.str_term else (try self.strCalc()));
        self._m_term_or_calc = _v;
        return _v;
    }
    pub fn termOrCalcBytes(self: *CombineStr) ![]u8 {
        if (self._m_term_or_calc_bytes) |_v|
            return _v;
        var _v: []u8 = undefined;
        _v = (if (false) self.str_term else (try self.strCalcBytes()));
        self._m_term_or_calc_bytes = _v;
        return _v;
    }
    pub fn termOrEos(self: *CombineStr) ![]u8 {
        if (self._m_term_or_eos) |_v|
            return _v;
        var _v: []u8 = undefined;
        _v = (if (false) self.str_term else self.str_eos);
        self._m_term_or_eos = _v;
        return _v;
    }
    pub fn termOrLimit(self: *CombineStr) ![]u8 {
        if (self._m_term_or_limit) |_v|
            return _v;
        var _v: []u8 = undefined;
        _v = (if (true) self.str_term else self.str_limit);
        self._m_term_or_limit = _v;
        return _v;
    }
    _m_calc_bytes: ?[]u8 = null,
    _m_calc_or_calc_bytes: ?[]u8 = null,
    _m_eos_or_calc: ?[]u8 = null,
    _m_eos_or_calc_bytes: ?[]u8 = null,
    _m_limit_or_calc: ?[]u8 = null,
    _m_limit_or_calc_bytes: ?[]u8 = null,
    _m_limit_or_eos: ?[]u8 = null,
    _m_str_calc: ?[]u8 = null,
    _m_str_calc_bytes: ?[]u8 = null,
    _m_term_or_calc: ?[]u8 = null,
    _m_term_or_calc_bytes: ?[]u8 = null,
    _m_term_or_eos: ?[]u8 = null,
    _m_term_or_limit: ?[]u8 = null,
    str_term: []u8 = undefined,
    str_limit: []u8 = undefined,
    str_eos: []u8 = undefined,
    _root: ?*CombineStr,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
