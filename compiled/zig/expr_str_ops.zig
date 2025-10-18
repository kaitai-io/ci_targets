// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const ExprStrOps = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*ExprStrOps) !*ExprStrOps {
        const self = try _arena.allocator().create(ExprStrOps);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const ExprStrOps) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *ExprStrOps) !void {
        self.one = kaitai_struct.KaitaiStream.bytesToStr(try self._io.readBytes(self._allocator(), 5), "ASCII");
    }
    pub fn oneLen(self: *ExprStrOps) !i32 {
        if (self._m_one_len) |_v|
            return _v;
        var _v: i32 = undefined;
        _v = self.one.len;
        self._m_one_len = _v;
        return _v;
    }
    pub fn oneRev(self: *ExprStrOps) ![]u8 {
        if (self._m_one_rev) |_v|
            return _v;
        var _v: []u8 = undefined;
        _v = new StringBuilder(self.one).reverse().toString();
        self._m_one_rev = _v;
        return _v;
    }
    pub fn oneSubstr0To0(self: *ExprStrOps) ![]u8 {
        if (self._m_one_substr_0_to_0) |_v|
            return _v;
        var _v: []u8 = undefined;
        _v = self.one[0..0];
        self._m_one_substr_0_to_0 = _v;
        return _v;
    }
    pub fn oneSubstr0To3(self: *ExprStrOps) ![]u8 {
        if (self._m_one_substr_0_to_3) |_v|
            return _v;
        var _v: []u8 = undefined;
        _v = self.one[0..3];
        self._m_one_substr_0_to_3 = _v;
        return _v;
    }
    pub fn oneSubstr2To5(self: *ExprStrOps) ![]u8 {
        if (self._m_one_substr_2_to_5) |_v|
            return _v;
        var _v: []u8 = undefined;
        _v = self.one[2..5];
        self._m_one_substr_2_to_5 = _v;
        return _v;
    }
    pub fn oneSubstr3To3(self: *ExprStrOps) ![]u8 {
        if (self._m_one_substr_3_to_3) |_v|
            return _v;
        var _v: []u8 = undefined;
        _v = self.one[3..3];
        self._m_one_substr_3_to_3 = _v;
        return _v;
    }
    pub fn toIAttr(self: *ExprStrOps) !i32 {
        if (self._m_to_i_attr) |_v|
            return _v;
        var _v: i32 = undefined;
        _v = (try std.fmt.parseInt(i32, "9173", 10));
        self._m_to_i_attr = _v;
        return _v;
    }
    pub fn toIR10(self: *ExprStrOps) !i32 {
        if (self._m_to_i_r10) |_v|
            return _v;
        var _v: i32 = undefined;
        _v = (try std.fmt.parseInt(i32, "-072", 10));
        self._m_to_i_r10 = _v;
        return _v;
    }
    pub fn toIR16(self: *ExprStrOps) !i32 {
        if (self._m_to_i_r16) |_v|
            return _v;
        var _v: i32 = undefined;
        _v = (try std.fmt.parseInt(i32, "47cf", 16));
        self._m_to_i_r16 = _v;
        return _v;
    }
    pub fn toIR2(self: *ExprStrOps) !i32 {
        if (self._m_to_i_r2) |_v|
            return _v;
        var _v: i32 = undefined;
        _v = (try std.fmt.parseInt(i32, "1010110", 2));
        self._m_to_i_r2 = _v;
        return _v;
    }
    pub fn toIR8(self: *ExprStrOps) !i32 {
        if (self._m_to_i_r8) |_v|
            return _v;
        var _v: i32 = undefined;
        _v = (try std.fmt.parseInt(i32, "721", 8));
        self._m_to_i_r8 = _v;
        return _v;
    }
    pub fn two(self: *ExprStrOps) ![]u8 {
        if (self._m_two) |_v|
            return _v;
        var _v: []u8 = undefined;
        _v = "0123456789";
        self._m_two = _v;
        return _v;
    }
    pub fn twoLen(self: *ExprStrOps) !i32 {
        if (self._m_two_len) |_v|
            return _v;
        var _v: i32 = undefined;
        _v = (try self.two()).len;
        self._m_two_len = _v;
        return _v;
    }
    pub fn twoRev(self: *ExprStrOps) ![]u8 {
        if (self._m_two_rev) |_v|
            return _v;
        var _v: []u8 = undefined;
        _v = new StringBuilder((try self.two())).reverse().toString();
        self._m_two_rev = _v;
        return _v;
    }
    pub fn twoSubstr0To10(self: *ExprStrOps) ![]u8 {
        if (self._m_two_substr_0_to_10) |_v|
            return _v;
        var _v: []u8 = undefined;
        _v = (try self.two())[0..10];
        self._m_two_substr_0_to_10 = _v;
        return _v;
    }
    pub fn twoSubstr0To7(self: *ExprStrOps) ![]u8 {
        if (self._m_two_substr_0_to_7) |_v|
            return _v;
        var _v: []u8 = undefined;
        _v = (try self.two())[0..7];
        self._m_two_substr_0_to_7 = _v;
        return _v;
    }
    pub fn twoSubstr4To10(self: *ExprStrOps) ![]u8 {
        if (self._m_two_substr_4_to_10) |_v|
            return _v;
        var _v: []u8 = undefined;
        _v = (try self.two())[4..10];
        self._m_two_substr_4_to_10 = _v;
        return _v;
    }
    _m_one_len: ?i32 = null,
    _m_one_rev: ?[]u8 = null,
    _m_one_substr_0_to_0: ?[]u8 = null,
    _m_one_substr_0_to_3: ?[]u8 = null,
    _m_one_substr_2_to_5: ?[]u8 = null,
    _m_one_substr_3_to_3: ?[]u8 = null,
    _m_to_i_attr: ?i32 = null,
    _m_to_i_r10: ?i32 = null,
    _m_to_i_r16: ?i32 = null,
    _m_to_i_r2: ?i32 = null,
    _m_to_i_r8: ?i32 = null,
    _m_two: ?[]u8 = null,
    _m_two_len: ?i32 = null,
    _m_two_rev: ?[]u8 = null,
    _m_two_substr_0_to_10: ?[]u8 = null,
    _m_two_substr_0_to_7: ?[]u8 = null,
    _m_two_substr_4_to_10: ?[]u8 = null,
    one: []u8 = undefined,
    _root: ?*ExprStrOps,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
