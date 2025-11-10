// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const ExprOpsParens = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*ExprOpsParens) !*ExprOpsParens {
        const self = try _arena.allocator().create(ExprOpsParens);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const ExprOpsParens) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *ExprOpsParens) !void {
        _ = self;
    }
    pub fn boolAnd(self: *ExprOpsParens) !i32 {
        if (self._m_bool_and) |_v|
            return _v;
        var _v: i32 = undefined;
        _v = @intFromBool( ((false) and (true)) );
        self._m_bool_and = _v;
        return _v;
    }
    pub fn boolEq(self: *ExprOpsParens) !i32 {
        if (self._m_bool_eq) |_v|
            return _v;
        var _v: i32 = undefined;
        _v = @intFromBool(false == true);
        self._m_bool_eq = _v;
        return _v;
    }
    pub fn boolOr(self: *ExprOpsParens) !i32 {
        if (self._m_bool_or) |_v|
            return _v;
        var _v: i32 = undefined;
        _v = @intFromBool( ((!(false)) or (false)) );
        self._m_bool_or = _v;
        return _v;
    }
    pub fn f2pi(self: *ExprOpsParens) !f64 {
        if (self._m_f_2pi) |_v|
            return _v;
        var _v: f64 = undefined;
        _v = 6.28;
        self._m_f_2pi = _v;
        return _v;
    }
    pub fn fE(self: *ExprOpsParens) !f64 {
        if (self._m_f_e) |_v|
            return _v;
        var _v: f64 = undefined;
        _v = 2.72;
        self._m_f_e = _v;
        return _v;
    }
    pub fn fSumToInt(self: *ExprOpsParens) !i32 {
        if (self._m_f_sum_to_int) |_v|
            return _v;
        var _v: i32 = undefined;
        _v = @intFromFloat((try self.f2pi()) + (try self.fE()));
        self._m_f_sum_to_int = _v;
        return _v;
    }
    pub fn i42(self: *ExprOpsParens) !i8 {
        if (self._m_i_42) |_v|
            return _v;
        var _v: i8 = undefined;
        _v = 42;
        self._m_i_42 = _v;
        return _v;
    }
    pub fn iM13(self: *ExprOpsParens) !i32 {
        if (self._m_i_m13) |_v|
            return _v;
        var _v: i32 = undefined;
        _v = -13;
        self._m_i_m13 = _v;
        return _v;
    }
    pub fn iSumToStr(self: *ExprOpsParens) ![]const u8 {
        if (self._m_i_sum_to_str) |_v|
            return _v;
        var _v: []const u8 = undefined;
        _v = (try _imp_std.fmt.allocPrint(self._allocator(), "{d}", .{ (try self.i42()) + (try self.iM13()) }));
        self._m_i_sum_to_str = _v;
        return _v;
    }
    pub fn str0To4(self: *ExprOpsParens) ![]const u8 {
        if (self._m_str_0_to_4) |_v|
            return _v;
        var _v: []const u8 = undefined;
        _v = "01234";
        self._m_str_0_to_4 = _v;
        return _v;
    }
    pub fn str5To9(self: *ExprOpsParens) ![]const u8 {
        if (self._m_str_5_to_9) |_v|
            return _v;
        var _v: []const u8 = undefined;
        _v = "56789";
        self._m_str_5_to_9 = _v;
        return _v;
    }
    pub fn strConcatLen(self: *ExprOpsParens) !i32 {
        if (self._m_str_concat_len) |_v|
            return _v;
        var _v: i32 = undefined;
        _v = (try _imp_std.mem.concat(self._allocator(), u8, &[_][]const u8{ (try self.str0To4()), (try self.str5To9()) })).len;
        self._m_str_concat_len = _v;
        return _v;
    }
    pub fn strConcatRev(self: *ExprOpsParens) ![]const u8 {
        if (self._m_str_concat_rev) |_v|
            return _v;
        var _v: []const u8 = undefined;
        _v = new StringBuilder((try _imp_std.mem.concat(self._allocator(), u8, &[_][]const u8{ (try self.str0To4()), (try self.str5To9()) }))).reverse().toString();
        self._m_str_concat_rev = _v;
        return _v;
    }
    pub fn strConcatSubstr2To7(self: *ExprOpsParens) ![]const u8 {
        if (self._m_str_concat_substr_2_to_7) |_v|
            return _v;
        var _v: []const u8 = undefined;
        _v = (try _imp_std.mem.concat(self._allocator(), u8, &[_][]const u8{ (try self.str0To4()), (try self.str5To9()) }))[2..7];
        self._m_str_concat_substr_2_to_7 = _v;
        return _v;
    }
    pub fn strConcatToI(self: *ExprOpsParens) !i32 {
        if (self._m_str_concat_to_i) |_v|
            return _v;
        var _v: i32 = undefined;
        _v = (try _imp_std.fmt.parseInt(i32, (try _imp_std.mem.concat(self._allocator(), u8, &[_][]const u8{ (try self.str0To4()), (try self.str5To9()) })), 10));
        self._m_str_concat_to_i = _v;
        return _v;
    }
    _m_bool_and: ?i32 = null,
    _m_bool_eq: ?i32 = null,
    _m_bool_or: ?i32 = null,
    _m_f_2pi: ?f64 = null,
    _m_f_e: ?f64 = null,
    _m_f_sum_to_int: ?i32 = null,
    _m_i_42: ?i8 = null,
    _m_i_m13: ?i32 = null,
    _m_i_sum_to_str: ?[]const u8 = null,
    _m_str_0_to_4: ?[]const u8 = null,
    _m_str_5_to_9: ?[]const u8 = null,
    _m_str_concat_len: ?i32 = null,
    _m_str_concat_rev: ?[]const u8 = null,
    _m_str_concat_substr_2_to_7: ?[]const u8 = null,
    _m_str_concat_to_i: ?i32 = null,
    _root: ?*ExprOpsParens,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
