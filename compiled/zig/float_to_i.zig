// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const FloatToI = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*FloatToI) !*FloatToI {
        const self = try _arena.allocator().create(FloatToI);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const FloatToI) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *FloatToI) !void {
        self.single_value = try self._io.readF4le();
        self.double_value = try self._io.readF8le();
        if (true) {
            self.single_value_if = try self._io.readF4be();
        }
        if (true) {
            self.double_value_if = try self._io.readF8be();
        }
    }
    pub fn calcFloat1(self: *FloatToI) !f64 {
        if (self._m_calc_float1) |_v|
            return _v;
        var _v: f64 = undefined;
        _v = 1.234;
        self._m_calc_float1 = _v;
        return _v;
    }
    pub fn calcFloat2(self: *FloatToI) !f64 {
        if (self._m_calc_float2) |_v|
            return _v;
        var _v: f64 = undefined;
        _v = 1.5;
        self._m_calc_float2 = _v;
        return _v;
    }
    pub fn calcFloat3(self: *FloatToI) !f64 {
        if (self._m_calc_float3) |_v|
            return _v;
        var _v: f64 = undefined;
        _v = 1.9;
        self._m_calc_float3 = _v;
        return _v;
    }
    pub fn calcFloat4(self: *FloatToI) !f64 {
        if (self._m_calc_float4) |_v|
            return _v;
        var _v: f64 = undefined;
        _v = -2.7;
        self._m_calc_float4 = _v;
        return _v;
    }
    pub fn calcIf(self: *FloatToI) !f64 {
        if (self._m_calc_if) |_v|
            return _v;
        var _v: f64 = undefined;
        _v = 13.9;
        self._m_calc_if = _v;
        return _v;
    }
    pub fn calcIfI(self: *FloatToI) !i32 {
        if (self._m_calc_if_i) |_v|
            return _v;
        var _v: i32 = undefined;
        _v = @intFromFloat((try self.calcIf()));
        self._m_calc_if_i = _v;
        return _v;
    }
    pub fn doubleI(self: *FloatToI) !i32 {
        if (self._m_double_i) |_v|
            return _v;
        var _v: i32 = undefined;
        _v = @intFromFloat(self.double_value);
        self._m_double_i = _v;
        return _v;
    }
    pub fn doubleIfI(self: *FloatToI) !i32 {
        if (self._m_double_if_i) |_v|
            return _v;
        var _v: i32 = undefined;
        _v = @intFromFloat(self.double_value_if);
        self._m_double_if_i = _v;
        return _v;
    }
    pub fn float1I(self: *FloatToI) !i32 {
        if (self._m_float1_i) |_v|
            return _v;
        var _v: i32 = undefined;
        _v = @intFromFloat((try self.calcFloat1()));
        self._m_float1_i = _v;
        return _v;
    }
    pub fn float2I(self: *FloatToI) !i32 {
        if (self._m_float2_i) |_v|
            return _v;
        var _v: i32 = undefined;
        _v = @intFromFloat((try self.calcFloat2()));
        self._m_float2_i = _v;
        return _v;
    }
    pub fn float3I(self: *FloatToI) !i32 {
        if (self._m_float3_i) |_v|
            return _v;
        var _v: i32 = undefined;
        _v = @intFromFloat((try self.calcFloat3()));
        self._m_float3_i = _v;
        return _v;
    }
    pub fn float4I(self: *FloatToI) !i32 {
        if (self._m_float4_i) |_v|
            return _v;
        var _v: i32 = undefined;
        _v = @intFromFloat((try self.calcFloat4()));
        self._m_float4_i = _v;
        return _v;
    }
    pub fn singleI(self: *FloatToI) !i32 {
        if (self._m_single_i) |_v|
            return _v;
        var _v: i32 = undefined;
        _v = @intFromFloat(self.single_value);
        self._m_single_i = _v;
        return _v;
    }
    pub fn singleIfI(self: *FloatToI) !i32 {
        if (self._m_single_if_i) |_v|
            return _v;
        var _v: i32 = undefined;
        _v = @intFromFloat(self.single_value_if);
        self._m_single_if_i = _v;
        return _v;
    }
    _m_calc_float1: ?f64 = null,
    _m_calc_float2: ?f64 = null,
    _m_calc_float3: ?f64 = null,
    _m_calc_float4: ?f64 = null,
    _m_calc_if: ?f64 = null,
    _m_calc_if_i: ?i32 = null,
    _m_double_i: ?i32 = null,
    _m_double_if_i: ?i32 = null,
    _m_float1_i: ?i32 = null,
    _m_float2_i: ?i32 = null,
    _m_float3_i: ?i32 = null,
    _m_float4_i: ?i32 = null,
    _m_single_i: ?i32 = null,
    _m_single_if_i: ?i32 = null,
    single_value: f32 = undefined,
    double_value: f64 = undefined,
    single_value_if: ?f32 = null,
    double_value_if: ?f64 = null,
    _root: ?*FloatToI,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
