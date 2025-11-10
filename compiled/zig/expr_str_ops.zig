// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const ExprStrOps = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*ExprStrOps) !*ExprStrOps {
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
    fn _allocator(self: *const ExprStrOps) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *ExprStrOps) !void {
        self.one = (try _imp_kaitai_struct.KaitaiStream.bytesToStr(self._allocator(), try self._io.readBytes(self._allocator(), 5), "ASCII"));
    }
    pub fn oneLen(self: *ExprStrOps) !i32 {
        if (self._m_one_len) |_v|
            return _v;
        var _v: i32 = undefined;
        _v = self.one.len;
        self._m_one_len = _v;
        return _v;
    }
    pub fn oneRev(self: *ExprStrOps) ![]const u8 {
        if (self._m_one_rev) |_v|
            return _v;
        var _v: []const u8 = undefined;
        _v = new StringBuilder(self.one).reverse().toString();
        self._m_one_rev = _v;
        return _v;
    }
    pub fn oneSubstr0To0(self: *ExprStrOps) ![]const u8 {
        if (self._m_one_substr_0_to_0) |_v|
            return _v;
        var _v: []const u8 = undefined;
        _v = self.one[0..0];
        self._m_one_substr_0_to_0 = _v;
        return _v;
    }
    pub fn oneSubstr0To3(self: *ExprStrOps) ![]const u8 {
        if (self._m_one_substr_0_to_3) |_v|
            return _v;
        var _v: []const u8 = undefined;
        _v = self.one[0..3];
        self._m_one_substr_0_to_3 = _v;
        return _v;
    }
    pub fn oneSubstr2To5(self: *ExprStrOps) ![]const u8 {
        if (self._m_one_substr_2_to_5) |_v|
            return _v;
        var _v: []const u8 = undefined;
        _v = self.one[2..5];
        self._m_one_substr_2_to_5 = _v;
        return _v;
    }
    pub fn oneSubstr3To3(self: *ExprStrOps) ![]const u8 {
        if (self._m_one_substr_3_to_3) |_v|
            return _v;
        var _v: []const u8 = undefined;
        _v = self.one[3..3];
        self._m_one_substr_3_to_3 = _v;
        return _v;
    }
    pub fn toIAttr(self: *ExprStrOps) !i32 {
        if (self._m_to_i_attr) |_v|
            return _v;
        var _v: i32 = undefined;
        _v = (try _imp_std.fmt.parseInt(i32, "9173", 10));
        self._m_to_i_attr = _v;
        return _v;
    }
    pub fn toIR10(self: *ExprStrOps) !i32 {
        if (self._m_to_i_r10) |_v|
            return _v;
        var _v: i32 = undefined;
        _v = (try _imp_std.fmt.parseInt(i32, "-072", 10));
        self._m_to_i_r10 = _v;
        return _v;
    }
    pub fn toIR16(self: *ExprStrOps) !i32 {
        if (self._m_to_i_r16) |_v|
            return _v;
        var _v: i32 = undefined;
        _v = (try _imp_std.fmt.parseInt(i32, "47cf", 16));
        self._m_to_i_r16 = _v;
        return _v;
    }
    pub fn toIR2(self: *ExprStrOps) !i32 {
        if (self._m_to_i_r2) |_v|
            return _v;
        var _v: i32 = undefined;
        _v = (try _imp_std.fmt.parseInt(i32, "1010110", 2));
        self._m_to_i_r2 = _v;
        return _v;
    }
    pub fn toIR8(self: *ExprStrOps) !i32 {
        if (self._m_to_i_r8) |_v|
            return _v;
        var _v: i32 = undefined;
        _v = (try _imp_std.fmt.parseInt(i32, "721", 8));
        self._m_to_i_r8 = _v;
        return _v;
    }
    pub fn two(self: *ExprStrOps) ![]const u8 {
        if (self._m_two) |_v|
            return _v;
        var _v: []const u8 = undefined;
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
    pub fn twoRev(self: *ExprStrOps) ![]const u8 {
        if (self._m_two_rev) |_v|
            return _v;
        var _v: []const u8 = undefined;
        _v = new StringBuilder((try self.two())).reverse().toString();
        self._m_two_rev = _v;
        return _v;
    }
    pub fn twoSubstr0To10(self: *ExprStrOps) ![]const u8 {
        if (self._m_two_substr_0_to_10) |_v|
            return _v;
        var _v: []const u8 = undefined;
        _v = (try self.two())[0..10];
        self._m_two_substr_0_to_10 = _v;
        return _v;
    }
    pub fn twoSubstr0To7(self: *ExprStrOps) ![]const u8 {
        if (self._m_two_substr_0_to_7) |_v|
            return _v;
        var _v: []const u8 = undefined;
        _v = (try self.two())[0..7];
        self._m_two_substr_0_to_7 = _v;
        return _v;
    }
    pub fn twoSubstr4To10(self: *ExprStrOps) ![]const u8 {
        if (self._m_two_substr_4_to_10) |_v|
            return _v;
        var _v: []const u8 = undefined;
        _v = (try self.two())[4..10];
        self._m_two_substr_4_to_10 = _v;
        return _v;
    }
    _m_one_len: ?i32 = null,
    _m_one_rev: ?[]const u8 = null,
    _m_one_substr_0_to_0: ?[]const u8 = null,
    _m_one_substr_0_to_3: ?[]const u8 = null,
    _m_one_substr_2_to_5: ?[]const u8 = null,
    _m_one_substr_3_to_3: ?[]const u8 = null,
    _m_to_i_attr: ?i32 = null,
    _m_to_i_r10: ?i32 = null,
    _m_to_i_r16: ?i32 = null,
    _m_to_i_r2: ?i32 = null,
    _m_to_i_r8: ?i32 = null,
    _m_two: ?[]const u8 = null,
    _m_two_len: ?i32 = null,
    _m_two_rev: ?[]const u8 = null,
    _m_two_substr_0_to_10: ?[]const u8 = null,
    _m_two_substr_0_to_7: ?[]const u8 = null,
    _m_two_substr_4_to_10: ?[]const u8 = null,
    one: []const u8 = undefined,
    _root: ?*ExprStrOps,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
