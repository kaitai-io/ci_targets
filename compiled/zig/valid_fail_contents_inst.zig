// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const ValidFailContentsInst = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*ValidFailContentsInst) !*ValidFailContentsInst {
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
    fn _allocator(self: *const ValidFailContentsInst) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *ValidFailContentsInst) !void {
        if ((try self.foo()).len == 0) {
            self.a = try self._io.readBytes(self._allocator(), 0);
        }
    }
    pub fn foo(self: *ValidFailContentsInst) ![]u8 {
        if (self._m_foo) |_v|
            return _v;
        var _v: []u8 = undefined;
        const _pos = self._io.pos();
        try self._io.seek(0);
        _v = try self._io.readBytes(self._allocator(), 2);
        if (!(std.mem.eql(u8, self._m_foo, &[_]u8{ 81, 65 }))) {
            return error.ValidationNotEqualError;
        }
        try self._io.seek(_pos);
        self._m_foo = _v;
        return _v;
    }
    _m_foo: ?[]u8 = null,
    a: ?[]u8 = null,
    _root: ?*ValidFailContentsInst,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
