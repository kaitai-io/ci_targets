// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const ExprFstring0 = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*ExprFstring0) !*ExprFstring0 {
        const self = try _arena.allocator().create(ExprFstring0);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const ExprFstring0) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *ExprFstring0) !void {
        self.seq_str = kaitai_struct.KaitaiStream.bytesToStr(try self._io.readBytes(self._allocator(), 5), "ASCII");
        self.seq_int = try self._io.readU1();
    }
    pub fn empty(self: *ExprFstring0) ![]u8 {
        if (self._m_empty) |_v|
            return _v;
        var _v: []u8 = undefined;
        _v = "";
        self._m_empty = _v;
        return _v;
    }
    pub fn headAndInt(self: *ExprFstring0) ![]u8 {
        if (self._m_head_and_int) |_v|
            return _v;
        var _v: []u8 = undefined;
        _v = "abc=" + (try std.fmt.allocPrint(self._allocator(), "{d}", .{ self.seq_int }));
        self._m_head_and_int = _v;
        return _v;
    }
    pub fn headAndIntLiteral(self: *ExprFstring0) ![]u8 {
        if (self._m_head_and_int_literal) |_v|
            return _v;
        var _v: []u8 = undefined;
        _v = "abc=" + (try std.fmt.allocPrint(self._allocator(), "{d}", .{ 123 }));
        self._m_head_and_int_literal = _v;
        return _v;
    }
    pub fn headAndStr(self: *ExprFstring0) ![]u8 {
        if (self._m_head_and_str) |_v|
            return _v;
        var _v: []u8 = undefined;
        _v = "abc=" + self.seq_str;
        self._m_head_and_str = _v;
        return _v;
    }
    pub fn headAndStrLiteral(self: *ExprFstring0) ![]u8 {
        if (self._m_head_and_str_literal) |_v|
            return _v;
        var _v: []u8 = undefined;
        _v = "abc=" + "foo";
        self._m_head_and_str_literal = _v;
        return _v;
    }
    pub fn literal(self: *ExprFstring0) ![]u8 {
        if (self._m_literal) |_v|
            return _v;
        var _v: []u8 = undefined;
        _v = "abc";
        self._m_literal = _v;
        return _v;
    }
    pub fn literalWithEscapes(self: *ExprFstring0) ![]u8 {
        if (self._m_literal_with_escapes) |_v|
            return _v;
        var _v: []u8 = undefined;
        _v = "abc\n\tt";
        self._m_literal_with_escapes = _v;
        return _v;
    }
    _m_empty: ?[]u8 = null,
    _m_head_and_int: ?[]u8 = null,
    _m_head_and_int_literal: ?[]u8 = null,
    _m_head_and_str: ?[]u8 = null,
    _m_head_and_str_literal: ?[]u8 = null,
    _m_literal: ?[]u8 = null,
    _m_literal_with_escapes: ?[]u8 = null,
    seq_str: []u8 = undefined,
    seq_int: u8 = undefined,
    _root: ?*ExprFstring0,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
