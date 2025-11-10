// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const ValidFailContentsInst = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*ValidFailContentsInst) !*ValidFailContentsInst {
        const self = try _arena.allocator().create(ValidFailContentsInst);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const ValidFailContentsInst) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *ValidFailContentsInst) !void {
        if ((try self.foo()).len == 0) {
            self.a = try self._io.readBytes(self._allocator(), 0);
        }
    }
    pub fn foo(self: *ValidFailContentsInst) ![]const u8 {
        if (self._m_foo) |_v|
            return _v;
        var _v: []const u8 = undefined;
        const _pos = self._io.pos();
        try self._io.seek(0);
        _v = try self._io.readBytes(self._allocator(), 2);
        if (!(_imp_std.mem.eql(u8, _v, &[_]u8{ 81, 65 }))) {
            return error.ValidationNotEqualError;
        }
        try self._io.seek(_pos);
        self._m_foo = _v;
        return _v;
    }
    _m_foo: ?[]const u8 = null,
    a: ?[]const u8 = null,
    _root: ?*ValidFailContentsInst,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
