// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const YamlInts = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*YamlInts) !*YamlInts {
        const self = try _arena.allocator().create(YamlInts);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const YamlInts) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *YamlInts) !void {
        _ = self;
    }
    pub fn testU4Dec(self: *YamlInts) !i32 {
        if (self._m_test_u4_dec) |_v|
            return _v;
        var _v: i32 = undefined;
        _v = 4294967295;
        self._m_test_u4_dec = _v;
        return _v;
    }
    pub fn testU4Hex(self: *YamlInts) !i32 {
        if (self._m_test_u4_hex) |_v|
            return _v;
        var _v: i32 = undefined;
        _v = 4294967295;
        self._m_test_u4_hex = _v;
        return _v;
    }
    pub fn testU8Dec(self: *YamlInts) !i32 {
        if (self._m_test_u8_dec) |_v|
            return _v;
        var _v: i32 = undefined;
        _v = 18446744073709551615;
        self._m_test_u8_dec = _v;
        return _v;
    }
    pub fn testU8Hex(self: *YamlInts) !i32 {
        if (self._m_test_u8_hex) |_v|
            return _v;
        var _v: i32 = undefined;
        _v = 18446744073709551615;
        self._m_test_u8_hex = _v;
        return _v;
    }
    _m_test_u4_dec: ?i32 = null,
    _m_test_u4_hex: ?i32 = null,
    _m_test_u8_dec: ?i32 = null,
    _m_test_u8_hex: ?i32 = null,
    _root: ?*YamlInts,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
