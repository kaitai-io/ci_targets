// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const CombineBytes = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*CombineBytes) !*CombineBytes {
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
    fn _allocator(self: *const CombineBytes) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *CombineBytes) !void {
        self.bytes_term = try self._io.readBytesTerm(self._allocator(), 124, false, true, true);
        self.bytes_limit = try self._io.readBytes(self._allocator(), 4);
        self.bytes_eos = try self._io.readBytesFull(self._allocator());
    }
    pub fn bytesCalc(self: *CombineBytes) ![]const u8 {
        if (self._m_bytes_calc) |_v|
            return _v;
        var _v: []const u8 = undefined;
        _v = &[_]u8{ 82, 110, 68 };
        self._m_bytes_calc = _v;
        return _v;
    }
    pub fn eosOrCalc(self: *CombineBytes) ![]const u8 {
        if (self._m_eos_or_calc) |_v|
            return _v;
        var _v: []const u8 = undefined;
        _v = (if (true) self.bytes_eos else (try self.bytesCalc()));
        self._m_eos_or_calc = _v;
        return _v;
    }
    pub fn limitOrCalc(self: *CombineBytes) ![]const u8 {
        if (self._m_limit_or_calc) |_v|
            return _v;
        var _v: []const u8 = undefined;
        _v = (if (false) self.bytes_limit else (try self.bytesCalc()));
        self._m_limit_or_calc = _v;
        return _v;
    }
    pub fn limitOrEos(self: *CombineBytes) ![]const u8 {
        if (self._m_limit_or_eos) |_v|
            return _v;
        var _v: []const u8 = undefined;
        _v = (if (true) self.bytes_limit else self.bytes_eos);
        self._m_limit_or_eos = _v;
        return _v;
    }
    pub fn termOrCalc(self: *CombineBytes) ![]const u8 {
        if (self._m_term_or_calc) |_v|
            return _v;
        var _v: []const u8 = undefined;
        _v = (if (true) self.bytes_term else (try self.bytesCalc()));
        self._m_term_or_calc = _v;
        return _v;
    }
    pub fn termOrEos(self: *CombineBytes) ![]const u8 {
        if (self._m_term_or_eos) |_v|
            return _v;
        var _v: []const u8 = undefined;
        _v = (if (false) self.bytes_term else self.bytes_eos);
        self._m_term_or_eos = _v;
        return _v;
    }
    pub fn termOrLimit(self: *CombineBytes) ![]const u8 {
        if (self._m_term_or_limit) |_v|
            return _v;
        var _v: []const u8 = undefined;
        _v = (if (true) self.bytes_term else self.bytes_limit);
        self._m_term_or_limit = _v;
        return _v;
    }
    _m_bytes_calc: ?[]const u8 = null,
    _m_eos_or_calc: ?[]const u8 = null,
    _m_limit_or_calc: ?[]const u8 = null,
    _m_limit_or_eos: ?[]const u8 = null,
    _m_term_or_calc: ?[]const u8 = null,
    _m_term_or_eos: ?[]const u8 = null,
    _m_term_or_limit: ?[]const u8 = null,
    bytes_term: []const u8 = undefined,
    bytes_limit: []const u8 = undefined,
    bytes_eos: []const u8 = undefined,
    _root: ?*CombineBytes,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
