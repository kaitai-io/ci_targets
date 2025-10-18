// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const CombineBytes = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*CombineBytes) !*CombineBytes {
        const self = try _arena.allocator().create(CombineBytes);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const CombineBytes) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *CombineBytes) !void {
        self.bytes_term = try self._io.readBytesTerm(self._allocator(), 124, false, true, true);
        self.bytes_limit = try self._io.readBytes(self._allocator(), 4);
        self.bytes_eos = try self._io.readBytesFull(self._allocator());
    }
    pub fn bytesCalc(self: *CombineBytes) ![]u8 {
        if (self._m_bytes_calc) |_v|
            return _v;
        var _v: []u8 = undefined;
        _v = &[_]u8{ 82, 110, 68 };
        self._m_bytes_calc = _v;
        return _v;
    }
    pub fn eosOrCalc(self: *CombineBytes) ![]u8 {
        if (self._m_eos_or_calc) |_v|
            return _v;
        var _v: []u8 = undefined;
        _v = (if (true) self.bytes_eos else (try self.bytesCalc()));
        self._m_eos_or_calc = _v;
        return _v;
    }
    pub fn limitOrCalc(self: *CombineBytes) ![]u8 {
        if (self._m_limit_or_calc) |_v|
            return _v;
        var _v: []u8 = undefined;
        _v = (if (false) self.bytes_limit else (try self.bytesCalc()));
        self._m_limit_or_calc = _v;
        return _v;
    }
    pub fn limitOrEos(self: *CombineBytes) ![]u8 {
        if (self._m_limit_or_eos) |_v|
            return _v;
        var _v: []u8 = undefined;
        _v = (if (true) self.bytes_limit else self.bytes_eos);
        self._m_limit_or_eos = _v;
        return _v;
    }
    pub fn termOrCalc(self: *CombineBytes) ![]u8 {
        if (self._m_term_or_calc) |_v|
            return _v;
        var _v: []u8 = undefined;
        _v = (if (true) self.bytes_term else (try self.bytesCalc()));
        self._m_term_or_calc = _v;
        return _v;
    }
    pub fn termOrEos(self: *CombineBytes) ![]u8 {
        if (self._m_term_or_eos) |_v|
            return _v;
        var _v: []u8 = undefined;
        _v = (if (false) self.bytes_term else self.bytes_eos);
        self._m_term_or_eos = _v;
        return _v;
    }
    pub fn termOrLimit(self: *CombineBytes) ![]u8 {
        if (self._m_term_or_limit) |_v|
            return _v;
        var _v: []u8 = undefined;
        _v = (if (true) self.bytes_term else self.bytes_limit);
        self._m_term_or_limit = _v;
        return _v;
    }
    _m_bytes_calc: ?[]u8 = null,
    _m_eos_or_calc: ?[]u8 = null,
    _m_limit_or_calc: ?[]u8 = null,
    _m_limit_or_eos: ?[]u8 = null,
    _m_term_or_calc: ?[]u8 = null,
    _m_term_or_eos: ?[]u8 = null,
    _m_term_or_limit: ?[]u8 = null,
    bytes_term: []u8 = undefined,
    bytes_limit: []u8 = undefined,
    bytes_eos: []u8 = undefined,
    _root: ?*CombineBytes,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
