// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const ExprBytesOps = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*ExprBytesOps) !*ExprBytesOps {
        const self = try _arena.allocator().create(ExprBytesOps);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const ExprBytesOps) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *ExprBytesOps) !void {
        self.one = try self._io.readBytes(self._allocator(), 3);
    }
    pub fn oneFirst(self: *ExprBytesOps) !u8 {
        if (self._m_one_first) |_v|
            return _v;
        var _v: u8 = undefined;
        _v = self.one[0];
        self._m_one_first = _v;
        return _v;
    }
    pub fn oneLast(self: *ExprBytesOps) !u8 {
        if (self._m_one_last) |_v|
            return _v;
        var _v: u8 = undefined;
        _v = self.one[self.one.len - 1];
        self._m_one_last = _v;
        return _v;
    }
    pub fn oneMax(self: *ExprBytesOps) !u8 {
        if (self._m_one_max) |_v|
            return _v;
        var _v: u8 = undefined;
        _v = std.mem.max(u8, self.one);
        self._m_one_max = _v;
        return _v;
    }
    pub fn oneMid(self: *ExprBytesOps) !u8 {
        if (self._m_one_mid) |_v|
            return _v;
        var _v: u8 = undefined;
        _v = self.one[1];
        self._m_one_mid = _v;
        return _v;
    }
    pub fn oneMin(self: *ExprBytesOps) !u8 {
        if (self._m_one_min) |_v|
            return _v;
        var _v: u8 = undefined;
        _v = std.mem.min(u8, self.one);
        self._m_one_min = _v;
        return _v;
    }
    pub fn oneSize(self: *ExprBytesOps) !i32 {
        if (self._m_one_size) |_v|
            return _v;
        var _v: i32 = undefined;
        _v = self.one.len;
        self._m_one_size = _v;
        return _v;
    }
    pub fn two(self: *ExprBytesOps) ![]u8 {
        if (self._m_two) |_v|
            return _v;
        var _v: []u8 = undefined;
        _v = &[_]u8{ 65, 255, 75 };
        self._m_two = _v;
        return _v;
    }
    pub fn twoFirst(self: *ExprBytesOps) !u8 {
        if (self._m_two_first) |_v|
            return _v;
        var _v: u8 = undefined;
        _v = (try self.two())[0];
        self._m_two_first = _v;
        return _v;
    }
    pub fn twoLast(self: *ExprBytesOps) !u8 {
        if (self._m_two_last) |_v|
            return _v;
        var _v: u8 = undefined;
        _v = (try self.two())[(try self.two()).len - 1];
        self._m_two_last = _v;
        return _v;
    }
    pub fn twoMax(self: *ExprBytesOps) !u8 {
        if (self._m_two_max) |_v|
            return _v;
        var _v: u8 = undefined;
        _v = std.mem.max(u8, (try self.two()));
        self._m_two_max = _v;
        return _v;
    }
    pub fn twoMid(self: *ExprBytesOps) !u8 {
        if (self._m_two_mid) |_v|
            return _v;
        var _v: u8 = undefined;
        _v = (try self.two())[1];
        self._m_two_mid = _v;
        return _v;
    }
    pub fn twoMin(self: *ExprBytesOps) !u8 {
        if (self._m_two_min) |_v|
            return _v;
        var _v: u8 = undefined;
        _v = std.mem.min(u8, (try self.two()));
        self._m_two_min = _v;
        return _v;
    }
    pub fn twoSize(self: *ExprBytesOps) !i32 {
        if (self._m_two_size) |_v|
            return _v;
        var _v: i32 = undefined;
        _v = (try self.two()).len;
        self._m_two_size = _v;
        return _v;
    }
    _m_one_first: ?u8 = null,
    _m_one_last: ?u8 = null,
    _m_one_max: ?u8 = null,
    _m_one_mid: ?u8 = null,
    _m_one_min: ?u8 = null,
    _m_one_size: ?i32 = null,
    _m_two: ?[]u8 = null,
    _m_two_first: ?u8 = null,
    _m_two_last: ?u8 = null,
    _m_two_max: ?u8 = null,
    _m_two_mid: ?u8 = null,
    _m_two_min: ?u8 = null,
    _m_two_size: ?i32 = null,
    one: []u8 = undefined,
    _root: ?*ExprBytesOps,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
