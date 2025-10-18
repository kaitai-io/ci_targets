// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const TypeIntUnaryOp = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*TypeIntUnaryOp) !*TypeIntUnaryOp {
        const self = try _arena.allocator().create(TypeIntUnaryOp);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const TypeIntUnaryOp) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *TypeIntUnaryOp) !void {
        self.value_s2 = try self._io.readS2le();
        self.value_s8 = try self._io.readS8le();
    }
    pub fn unaryS2(self: *TypeIntUnaryOp) !i32 {
        if (self._m_unary_s2) |_v|
            return _v;
        var _v: i32 = undefined;
        _v = -(self.value_s2);
        self._m_unary_s2 = _v;
        return _v;
    }
    pub fn unaryS8(self: *TypeIntUnaryOp) !i64 {
        if (self._m_unary_s8) |_v|
            return _v;
        var _v: i64 = undefined;
        _v = -(self.value_s8);
        self._m_unary_s8 = _v;
        return _v;
    }
    _m_unary_s2: ?i32 = null,
    _m_unary_s8: ?i64 = null,
    value_s2: i16 = undefined,
    value_s8: i64 = undefined,
    _root: ?*TypeIntUnaryOp,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
