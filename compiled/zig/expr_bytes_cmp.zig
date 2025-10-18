// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const ExprBytesCmp = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*ExprBytesCmp) !*ExprBytesCmp {
        const self = try _arena.allocator().create(ExprBytesCmp);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const ExprBytesCmp) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *ExprBytesCmp) !void {
        self.one = try self._io.readBytes(self._allocator(), 1);
        self.two = try self._io.readBytes(self._allocator(), 3);
    }
    pub fn ack(self: *ExprBytesCmp) ![]u8 {
        if (self._m_ack) |_v|
            return _v;
        var _v: []u8 = undefined;
        _v = &[_]u8{ 65, 67, 75 };
        self._m_ack = _v;
        return _v;
    }
    pub fn ack2(self: *ExprBytesCmp) ![]u8 {
        if (self._m_ack2) |_v|
            return _v;
        var _v: []u8 = undefined;
        _v = &[_]u8{ 65, 67, 75, 50 };
        self._m_ack2 = _v;
        return _v;
    }
    pub fn hiVal(self: *ExprBytesCmp) ![]u8 {
        if (self._m_hi_val) |_v|
            return _v;
        var _v: []u8 = undefined;
        _v = &[_]u8{ 144, 67 };
        self._m_hi_val = _v;
        return _v;
    }
    pub fn isEq(self: *ExprBytesCmp) !bool {
        if (self._m_is_eq) |_v|
            return _v;
        var _v: bool = undefined;
        _v = std.mem.eql(u8, self.two, (try self.ack()));
        self._m_is_eq = _v;
        return _v;
    }
    pub fn isGe(self: *ExprBytesCmp) !bool {
        if (self._m_is_ge) |_v|
            return _v;
        var _v: bool = undefined;
        _v = std.mem.order(u8, self.two, (try self.ack2())).compare(.gte);
        self._m_is_ge = _v;
        return _v;
    }
    pub fn isGt(self: *ExprBytesCmp) !bool {
        if (self._m_is_gt) |_v|
            return _v;
        var _v: bool = undefined;
        _v = (std.mem.order(u8, self.two, (try self.ack2())) == .gt);
        self._m_is_gt = _v;
        return _v;
    }
    pub fn isGt2(self: *ExprBytesCmp) !bool {
        if (self._m_is_gt2) |_v|
            return _v;
        var _v: bool = undefined;
        _v = (std.mem.order(u8, (try self.hiVal()), self.two) == .gt);
        self._m_is_gt2 = _v;
        return _v;
    }
    pub fn isLe(self: *ExprBytesCmp) !bool {
        if (self._m_is_le) |_v|
            return _v;
        var _v: bool = undefined;
        _v = std.mem.order(u8, self.two, (try self.ack2())).compare(.lte);
        self._m_is_le = _v;
        return _v;
    }
    pub fn isLt(self: *ExprBytesCmp) !bool {
        if (self._m_is_lt) |_v|
            return _v;
        var _v: bool = undefined;
        _v = (std.mem.order(u8, self.two, (try self.ack2())) == .lt);
        self._m_is_lt = _v;
        return _v;
    }
    pub fn isLt2(self: *ExprBytesCmp) !bool {
        if (self._m_is_lt2) |_v|
            return _v;
        var _v: bool = undefined;
        _v = (std.mem.order(u8, self.one, self.two) == .lt);
        self._m_is_lt2 = _v;
        return _v;
    }
    pub fn isNe(self: *ExprBytesCmp) !bool {
        if (self._m_is_ne) |_v|
            return _v;
        var _v: bool = undefined;
        _v = !std.mem.eql(u8, self.two, (try self.ack()));
        self._m_is_ne = _v;
        return _v;
    }
    _m_ack: ?[]u8 = null,
    _m_ack2: ?[]u8 = null,
    _m_hi_val: ?[]u8 = null,
    _m_is_eq: ?bool = null,
    _m_is_ge: ?bool = null,
    _m_is_gt: ?bool = null,
    _m_is_gt2: ?bool = null,
    _m_is_le: ?bool = null,
    _m_is_lt: ?bool = null,
    _m_is_lt2: ?bool = null,
    _m_is_ne: ?bool = null,
    one: []u8 = undefined,
    two: []u8 = undefined,
    _root: ?*ExprBytesCmp,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
