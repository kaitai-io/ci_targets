// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const ExprToITrailing = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*ExprToITrailing) !*ExprToITrailing {
        const self = try _arena.allocator().create(ExprToITrailing);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const ExprToITrailing) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *ExprToITrailing) !void {
        _ = self;
    }
    pub fn toIGarbage(self: *ExprToITrailing) !i32 {
        if (self._m_to_i_garbage) |_v|
            return _v;
        var _v: i32 = undefined;
        _v = (try std.fmt.parseInt(i32, "123_.^", 10));
        self._m_to_i_garbage = _v;
        return _v;
    }
    pub fn toIR10(self: *ExprToITrailing) !i32 {
        if (self._m_to_i_r10) |_v|
            return _v;
        var _v: i32 = undefined;
        _v = (try std.fmt.parseInt(i32, "9173abc", 10));
        self._m_to_i_r10 = _v;
        return _v;
    }
    pub fn toIR16(self: *ExprToITrailing) !i32 {
        if (self._m_to_i_r16) |_v|
            return _v;
        var _v: i32 = undefined;
        _v = (try std.fmt.parseInt(i32, "9173abc", 16));
        self._m_to_i_r16 = _v;
        return _v;
    }
    _m_to_i_garbage: ?i32 = null,
    _m_to_i_r10: ?i32 = null,
    _m_to_i_r16: ?i32 = null,
    _root: ?*ExprToITrailing,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
