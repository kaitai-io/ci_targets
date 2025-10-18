// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const FloatingPoints = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*FloatingPoints) !*FloatingPoints {
        const self = try _arena.allocator().create(FloatingPoints);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const FloatingPoints) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *FloatingPoints) !void {
        self.single_value = try self._io.readF4le();
        self.double_value = try self._io.readF8le();
        self.single_value_be = try self._io.readF4be();
        self.double_value_be = try self._io.readF8be();
        self.approximate_value = try self._io.readF4le();
    }
    pub fn doubleValuePlusFloat(self: *FloatingPoints) !f64 {
        if (self._m_double_value_plus_float) |_v|
            return _v;
        var _v: f64 = undefined;
        _v = self.double_value + 0.05;
        self._m_double_value_plus_float = _v;
        return _v;
    }
    pub fn singleValuePlusFloat(self: *FloatingPoints) !f64 {
        if (self._m_single_value_plus_float) |_v|
            return _v;
        var _v: f64 = undefined;
        _v = self.single_value + 0.5;
        self._m_single_value_plus_float = _v;
        return _v;
    }
    pub fn singleValuePlusInt(self: *FloatingPoints) !f64 {
        if (self._m_single_value_plus_int) |_v|
            return _v;
        var _v: f64 = undefined;
        _v = self.single_value + 1;
        self._m_single_value_plus_int = _v;
        return _v;
    }
    _m_double_value_plus_float: ?f64 = null,
    _m_single_value_plus_float: ?f64 = null,
    _m_single_value_plus_int: ?f64 = null,
    single_value: f32 = undefined,
    double_value: f64 = undefined,
    single_value_be: f32 = undefined,
    double_value_be: f64 = undefined,
    approximate_value: f32 = undefined,
    _root: ?*FloatingPoints,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
