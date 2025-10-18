// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const Expr3 = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*Expr3) !*Expr3 {
        const self = try _arena.allocator().create(Expr3);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const Expr3) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *Expr3) !void {
        self.one = try self._io.readU1();
        self.two = kaitai_struct.KaitaiStream.bytesToStr(try self._io.readBytes(self._allocator(), 3), "ASCII");
    }
    pub fn four(self: *Expr3) ![]u8 {
        if (self._m_four) |_v|
            return _v;
        var _v: []u8 = undefined;
        _v = (try std.mem.concat(self._allocator(), u8, &[_][]const u8{ (try std.mem.concat(self._allocator(), u8, &[_][]const u8{ "_", self.two })), "_" }));
        self._m_four = _v;
        return _v;
    }
    pub fn isStrEq(self: *Expr3) !bool {
        if (self._m_is_str_eq) |_v|
            return _v;
        var _v: bool = undefined;
        _v = std.mem.eql(u8, self.two, "ACK");
        self._m_is_str_eq = _v;
        return _v;
    }
    pub fn isStrGe(self: *Expr3) !bool {
        if (self._m_is_str_ge) |_v|
            return _v;
        var _v: bool = undefined;
        _v = std.mem.order(u8, self.two, "ACK2").compare(.gte);
        self._m_is_str_ge = _v;
        return _v;
    }
    pub fn isStrGt(self: *Expr3) !bool {
        if (self._m_is_str_gt) |_v|
            return _v;
        var _v: bool = undefined;
        _v = (std.mem.order(u8, self.two, "ACK2") == .gt);
        self._m_is_str_gt = _v;
        return _v;
    }
    pub fn isStrLe(self: *Expr3) !bool {
        if (self._m_is_str_le) |_v|
            return _v;
        var _v: bool = undefined;
        _v = std.mem.order(u8, self.two, "ACK2").compare(.lte);
        self._m_is_str_le = _v;
        return _v;
    }
    pub fn isStrLt(self: *Expr3) !bool {
        if (self._m_is_str_lt) |_v|
            return _v;
        var _v: bool = undefined;
        _v = (std.mem.order(u8, self.two, "ACK2") == .lt);
        self._m_is_str_lt = _v;
        return _v;
    }
    pub fn isStrLt2(self: *Expr3) !bool {
        if (self._m_is_str_lt2) |_v|
            return _v;
        var _v: bool = undefined;
        _v = (std.mem.order(u8, (try self.three()), self.two) == .lt);
        self._m_is_str_lt2 = _v;
        return _v;
    }
    pub fn isStrNe(self: *Expr3) !bool {
        if (self._m_is_str_ne) |_v|
            return _v;
        var _v: bool = undefined;
        _v = !std.mem.eql(u8, self.two, "ACK");
        self._m_is_str_ne = _v;
        return _v;
    }
    pub fn testNot(self: *Expr3) !bool {
        if (self._m_test_not) |_v|
            return _v;
        var _v: bool = undefined;
        _v = !(false);
        self._m_test_not = _v;
        return _v;
    }
    pub fn three(self: *Expr3) ![]u8 {
        if (self._m_three) |_v|
            return _v;
        var _v: []u8 = undefined;
        _v = (try std.mem.concat(self._allocator(), u8, &[_][]const u8{ "@", self.two }));
        self._m_three = _v;
        return _v;
    }
    _m_four: ?[]u8 = null,
    _m_is_str_eq: ?bool = null,
    _m_is_str_ge: ?bool = null,
    _m_is_str_gt: ?bool = null,
    _m_is_str_le: ?bool = null,
    _m_is_str_lt: ?bool = null,
    _m_is_str_lt2: ?bool = null,
    _m_is_str_ne: ?bool = null,
    _m_test_not: ?bool = null,
    _m_three: ?[]u8 = null,
    one: u8 = undefined,
    two: []u8 = undefined,
    _root: ?*Expr3,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
