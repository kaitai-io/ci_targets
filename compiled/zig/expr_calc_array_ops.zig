// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const ExprCalcArrayOps = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*ExprCalcArrayOps) !*ExprCalcArrayOps {
        const self = try _arena.allocator().create(ExprCalcArrayOps);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const ExprCalcArrayOps) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *ExprCalcArrayOps) !void {
        _ = self;
    }
    pub fn doubleArray(self: *ExprCalcArrayOps) !*std.ArrayList(f64) {
        if (self._m_double_array) |_v|
            return _v;
        var _v: *std.ArrayList(f64) = undefined;
        _v = std.ArrayList(f64){ .items = @constCast(@as([]const f64, &.{ 10.0, 25.0, 50.0, 100.0, 3.14159 })), .capacity = 5 };
        self._m_double_array = _v;
        return _v;
    }
    pub fn doubleArrayFirst(self: *ExprCalcArrayOps) !f64 {
        if (self._m_double_array_first) |_v|
            return _v;
        var _v: f64 = undefined;
        _v = (try self.doubleArray()).items[0];
        self._m_double_array_first = _v;
        return _v;
    }
    pub fn doubleArrayLast(self: *ExprCalcArrayOps) !f64 {
        if (self._m_double_array_last) |_v|
            return _v;
        var _v: f64 = undefined;
        _v = (try self.doubleArray()).items[(try self.doubleArray()).items.len - 1];
        self._m_double_array_last = _v;
        return _v;
    }
    pub fn doubleArrayMax(self: *ExprCalcArrayOps) !f64 {
        if (self._m_double_array_max) |_v|
            return _v;
        var _v: f64 = undefined;
        _v = std.mem.max(f64, (try self.doubleArray()).items);
        self._m_double_array_max = _v;
        return _v;
    }
    pub fn doubleArrayMid(self: *ExprCalcArrayOps) !f64 {
        if (self._m_double_array_mid) |_v|
            return _v;
        var _v: f64 = undefined;
        _v = (try self.doubleArray()).items[1];
        self._m_double_array_mid = _v;
        return _v;
    }
    pub fn doubleArrayMin(self: *ExprCalcArrayOps) !f64 {
        if (self._m_double_array_min) |_v|
            return _v;
        var _v: f64 = undefined;
        _v = std.mem.min(f64, (try self.doubleArray()).items);
        self._m_double_array_min = _v;
        return _v;
    }
    pub fn doubleArraySize(self: *ExprCalcArrayOps) !i32 {
        if (self._m_double_array_size) |_v|
            return _v;
        var _v: i32 = undefined;
        _v = (try self.doubleArray()).items.len;
        self._m_double_array_size = _v;
        return _v;
    }
    pub fn intArray(self: *ExprCalcArrayOps) !*std.ArrayList(i32) {
        if (self._m_int_array) |_v|
            return _v;
        var _v: *std.ArrayList(i32) = undefined;
        _v = std.ArrayList(i32){ .items = @constCast(@as([]const i32, &.{ 10, 25, 50, 100, 200, 500, 1000 })), .capacity = 7 };
        self._m_int_array = _v;
        return _v;
    }
    pub fn intArrayFirst(self: *ExprCalcArrayOps) !i32 {
        if (self._m_int_array_first) |_v|
            return _v;
        var _v: i32 = undefined;
        _v = (try self.intArray()).items[0];
        self._m_int_array_first = _v;
        return _v;
    }
    pub fn intArrayLast(self: *ExprCalcArrayOps) !i32 {
        if (self._m_int_array_last) |_v|
            return _v;
        var _v: i32 = undefined;
        _v = (try self.intArray()).items[(try self.intArray()).items.len - 1];
        self._m_int_array_last = _v;
        return _v;
    }
    pub fn intArrayMax(self: *ExprCalcArrayOps) !i32 {
        if (self._m_int_array_max) |_v|
            return _v;
        var _v: i32 = undefined;
        _v = std.mem.max(i32, (try self.intArray()).items);
        self._m_int_array_max = _v;
        return _v;
    }
    pub fn intArrayMid(self: *ExprCalcArrayOps) !i32 {
        if (self._m_int_array_mid) |_v|
            return _v;
        var _v: i32 = undefined;
        _v = (try self.intArray()).items[1];
        self._m_int_array_mid = _v;
        return _v;
    }
    pub fn intArrayMin(self: *ExprCalcArrayOps) !i32 {
        if (self._m_int_array_min) |_v|
            return _v;
        var _v: i32 = undefined;
        _v = std.mem.min(i32, (try self.intArray()).items);
        self._m_int_array_min = _v;
        return _v;
    }
    pub fn intArraySize(self: *ExprCalcArrayOps) !i32 {
        if (self._m_int_array_size) |_v|
            return _v;
        var _v: i32 = undefined;
        _v = (try self.intArray()).items.len;
        self._m_int_array_size = _v;
        return _v;
    }
    pub fn strArray(self: *ExprCalcArrayOps) !*std.ArrayList([]u8) {
        if (self._m_str_array) |_v|
            return _v;
        var _v: *std.ArrayList([]u8) = undefined;
        _v = std.ArrayList([]u8){ .items = @constCast(@as([]const []u8, &.{ "un", "deux", "trois", "quatre" })), .capacity = 4 };
        self._m_str_array = _v;
        return _v;
    }
    pub fn strArrayFirst(self: *ExprCalcArrayOps) ![]u8 {
        if (self._m_str_array_first) |_v|
            return _v;
        var _v: []u8 = undefined;
        _v = (try self.strArray()).items[0];
        self._m_str_array_first = _v;
        return _v;
    }
    pub fn strArrayLast(self: *ExprCalcArrayOps) ![]u8 {
        if (self._m_str_array_last) |_v|
            return _v;
        var _v: []u8 = undefined;
        _v = (try self.strArray()).items[(try self.strArray()).items.len - 1];
        self._m_str_array_last = _v;
        return _v;
    }
    pub fn strArrayMax(self: *ExprCalcArrayOps) ![]u8 {
        if (self._m_str_array_max) |_v|
            return _v;
        var _v: []u8 = undefined;
        _v = std.mem.max([]u8, (try self.strArray()).items);
        self._m_str_array_max = _v;
        return _v;
    }
    pub fn strArrayMid(self: *ExprCalcArrayOps) ![]u8 {
        if (self._m_str_array_mid) |_v|
            return _v;
        var _v: []u8 = undefined;
        _v = (try self.strArray()).items[1];
        self._m_str_array_mid = _v;
        return _v;
    }
    pub fn strArrayMin(self: *ExprCalcArrayOps) ![]u8 {
        if (self._m_str_array_min) |_v|
            return _v;
        var _v: []u8 = undefined;
        _v = std.mem.min([]u8, (try self.strArray()).items);
        self._m_str_array_min = _v;
        return _v;
    }
    pub fn strArraySize(self: *ExprCalcArrayOps) !i32 {
        if (self._m_str_array_size) |_v|
            return _v;
        var _v: i32 = undefined;
        _v = (try self.strArray()).items.len;
        self._m_str_array_size = _v;
        return _v;
    }
    _m_double_array: ?*std.ArrayList(f64) = null,
    _m_double_array_first: ?f64 = null,
    _m_double_array_last: ?f64 = null,
    _m_double_array_max: ?f64 = null,
    _m_double_array_mid: ?f64 = null,
    _m_double_array_min: ?f64 = null,
    _m_double_array_size: ?i32 = null,
    _m_int_array: ?*std.ArrayList(i32) = null,
    _m_int_array_first: ?i32 = null,
    _m_int_array_last: ?i32 = null,
    _m_int_array_max: ?i32 = null,
    _m_int_array_mid: ?i32 = null,
    _m_int_array_min: ?i32 = null,
    _m_int_array_size: ?i32 = null,
    _m_str_array: ?*std.ArrayList([]u8) = null,
    _m_str_array_first: ?[]u8 = null,
    _m_str_array_last: ?[]u8 = null,
    _m_str_array_max: ?[]u8 = null,
    _m_str_array_mid: ?[]u8 = null,
    _m_str_array_min: ?[]u8 = null,
    _m_str_array_size: ?i32 = null,
    _root: ?*ExprCalcArrayOps,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
