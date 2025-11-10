// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const StrLiterals = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*StrLiterals) !*StrLiterals {
        const self = try _arena.allocator().create(StrLiterals);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const StrLiterals) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *StrLiterals) !void {
        _ = self;
    }
    pub fn backslashes(self: *StrLiterals) ![]const u8 {
        if (self._m_backslashes) |_v|
            return _v;
        var _v: []const u8 = undefined;
        _v = "\\\\\\";
        self._m_backslashes = _v;
        return _v;
    }
    pub fn complexStr(self: *StrLiterals) ![]const u8 {
        if (self._m_complex_str) |_v|
            return _v;
        var _v: []const u8 = undefined;
        _v = "\u{0000}\u{0001}\u{0002}\u{0007}\u{0008}\n\r\t\u{000b}\u{000c}\u{001b}=\u{0007}\n$\u{263b}";
        self._m_complex_str = _v;
        return _v;
    }
    pub fn doubleQuotes(self: *StrLiterals) ![]const u8 {
        if (self._m_double_quotes) |_v|
            return _v;
        var _v: []const u8 = undefined;
        _v = "\"\"\"";
        self._m_double_quotes = _v;
        return _v;
    }
    pub fn octalEatup(self: *StrLiterals) ![]const u8 {
        if (self._m_octal_eatup) |_v|
            return _v;
        var _v: []const u8 = undefined;
        _v = "\u{0000}22";
        self._m_octal_eatup = _v;
        return _v;
    }
    pub fn octalEatup2(self: *StrLiterals) ![]const u8 {
        if (self._m_octal_eatup2) |_v|
            return _v;
        var _v: []const u8 = undefined;
        _v = "\u{0002}2";
        self._m_octal_eatup2 = _v;
        return _v;
    }
    _m_backslashes: ?[]const u8 = null,
    _m_complex_str: ?[]const u8 = null,
    _m_double_quotes: ?[]const u8 = null,
    _m_octal_eatup: ?[]const u8 = null,
    _m_octal_eatup2: ?[]const u8 = null,
    _root: ?*StrLiterals,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
