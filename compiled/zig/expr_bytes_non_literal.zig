// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const ExprBytesNonLiteral = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*ExprBytesNonLiteral) !*ExprBytesNonLiteral {
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
    fn _allocator(self: *const ExprBytesNonLiteral) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *ExprBytesNonLiteral) !void {
        self.one = try self._io.readU1();
        self.two = try self._io.readU1();
    }
    pub fn calcBytes(self: *ExprBytesNonLiteral) ![]const u8 {
        if (self._m_calc_bytes) |_v|
            return _v;
        var _v: []const u8 = undefined;
        _v = &[_]u8{ self.one, self.two };
        self._m_calc_bytes = _v;
        return _v;
    }
    _m_calc_bytes: ?[]const u8 = null,
    one: u8 = undefined,
    two: u8 = undefined,
    _root: ?*ExprBytesNonLiteral,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
