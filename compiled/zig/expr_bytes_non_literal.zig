// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const ExprBytesNonLiteral = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*ExprBytesNonLiteral) !*ExprBytesNonLiteral {
        const self = try _arena.allocator().create(ExprBytesNonLiteral);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const ExprBytesNonLiteral) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *ExprBytesNonLiteral) !void {
        self.one = try self._io.readU1();
        self.two = try self._io.readU1();
    }
    pub fn calcBytes(self: *ExprBytesNonLiteral) ![]u8 {
        if (self._m_calc_bytes) |_v|
            return _v;
        var _v: []u8 = undefined;
        _v = &[_]u8{ self.one, self.two };
        self._m_calc_bytes = _v;
        return _v;
    }
    _m_calc_bytes: ?[]u8 = null,
    one: u8 = undefined,
    two: u8 = undefined,
    _root: ?*ExprBytesNonLiteral,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
