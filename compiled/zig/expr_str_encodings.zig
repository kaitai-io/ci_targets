// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const ExprStrEncodings = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*ExprStrEncodings) !*ExprStrEncodings {
        const self = try _arena.allocator().create(ExprStrEncodings);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const ExprStrEncodings) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *ExprStrEncodings) !void {
        self.len_of_1 = try self._io.readU2le();
        self.str1 = kaitai_struct.KaitaiStream.bytesToStr(try self._io.readBytes(self._allocator(), self.len_of_1), "ASCII");
        self.len_of_2 = try self._io.readU2le();
        self.str2 = kaitai_struct.KaitaiStream.bytesToStr(try self._io.readBytes(self._allocator(), self.len_of_2), "UTF-8");
        self.len_of_3 = try self._io.readU2le();
        self.str3 = kaitai_struct.KaitaiStream.bytesToStr(try self._io.readBytes(self._allocator(), self.len_of_3), "Shift_JIS");
        self.len_of_4 = try self._io.readU2le();
        self.str4 = kaitai_struct.KaitaiStream.bytesToStr(try self._io.readBytes(self._allocator(), self.len_of_4), "IBM437");
    }
    pub fn str1Eq(self: *ExprStrEncodings) !bool {
        if (self._m_str1_eq) |_v|
            return _v;
        var _v: bool = undefined;
        _v = std.mem.eql(u8, self.str1, "Some ASCII");
        self._m_str1_eq = _v;
        return _v;
    }
    pub fn str2Eq(self: *ExprStrEncodings) !bool {
        if (self._m_str2_eq) |_v|
            return _v;
        var _v: bool = undefined;
        _v = std.mem.eql(u8, self.str2, "\u{3053}\u{3093}\u{306b}\u{3061}\u{306f}");
        self._m_str2_eq = _v;
        return _v;
    }
    pub fn str3Eq(self: *ExprStrEncodings) !bool {
        if (self._m_str3_eq) |_v|
            return _v;
        var _v: bool = undefined;
        _v = std.mem.eql(u8, self.str3, "\u{3053}\u{3093}\u{306b}\u{3061}\u{306f}");
        self._m_str3_eq = _v;
        return _v;
    }
    pub fn str3EqStr2(self: *ExprStrEncodings) !bool {
        if (self._m_str3_eq_str2) |_v|
            return _v;
        var _v: bool = undefined;
        _v = std.mem.eql(u8, self.str3, self.str2);
        self._m_str3_eq_str2 = _v;
        return _v;
    }
    pub fn str4Eq(self: *ExprStrEncodings) !bool {
        if (self._m_str4_eq) |_v|
            return _v;
        var _v: bool = undefined;
        _v = std.mem.eql(u8, self.str4, "\u{2591}\u{2592}\u{2593}");
        self._m_str4_eq = _v;
        return _v;
    }
    pub fn str4GtStrCalc(self: *ExprStrEncodings) !bool {
        if (self._m_str4_gt_str_calc) |_v|
            return _v;
        var _v: bool = undefined;
        _v = (std.mem.order(u8, self.str4, "\u{2524}") == .gt);
        self._m_str4_gt_str_calc = _v;
        return _v;
    }
    pub fn str4GtStrFromBytes(self: *ExprStrEncodings) !bool {
        if (self._m_str4_gt_str_from_bytes) |_v|
            return _v;
        var _v: bool = undefined;
        _v = (std.mem.order(u8, self.str4, kaitai_struct.KaitaiStream.bytesToStr(&[_]u8{ 180 }, "IBM437")) == .gt);
        self._m_str4_gt_str_from_bytes = _v;
        return _v;
    }
    _m_str1_eq: ?bool = null,
    _m_str2_eq: ?bool = null,
    _m_str3_eq: ?bool = null,
    _m_str3_eq_str2: ?bool = null,
    _m_str4_eq: ?bool = null,
    _m_str4_gt_str_calc: ?bool = null,
    _m_str4_gt_str_from_bytes: ?bool = null,
    len_of_1: u16 = undefined,
    str1: []u8 = undefined,
    len_of_2: u16 = undefined,
    str2: []u8 = undefined,
    len_of_3: u16 = undefined,
    str3: []u8 = undefined,
    len_of_4: u16 = undefined,
    str4: []u8 = undefined,
    _root: ?*ExprStrEncodings,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
