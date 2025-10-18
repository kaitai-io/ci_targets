// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const StrLiterals2 = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*StrLiterals2) !*StrLiterals2 {
        const self = try _arena.allocator().create(StrLiterals2);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const StrLiterals2) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *StrLiterals2) !void {
        _ = self;
    }
    pub fn atSign(self: *StrLiterals2) ![]u8 {
        if (self._m_at_sign) |_v|
            return _v;
        var _v: []u8 = undefined;
        _v = "@foo";
        self._m_at_sign = _v;
        return _v;
    }
    pub fn dollar1(self: *StrLiterals2) ![]u8 {
        if (self._m_dollar1) |_v|
            return _v;
        var _v: []u8 = undefined;
        _v = "$foo";
        self._m_dollar1 = _v;
        return _v;
    }
    pub fn dollar2(self: *StrLiterals2) ![]u8 {
        if (self._m_dollar2) |_v|
            return _v;
        var _v: []u8 = undefined;
        _v = "${foo}";
        self._m_dollar2 = _v;
        return _v;
    }
    pub fn hash(self: *StrLiterals2) ![]u8 {
        if (self._m_hash) |_v|
            return _v;
        var _v: []u8 = undefined;
        _v = "#{foo}";
        self._m_hash = _v;
        return _v;
    }
    _m_at_sign: ?[]u8 = null,
    _m_dollar1: ?[]u8 = null,
    _m_dollar2: ?[]u8 = null,
    _m_hash: ?[]u8 = null,
    _root: ?*StrLiterals2,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
