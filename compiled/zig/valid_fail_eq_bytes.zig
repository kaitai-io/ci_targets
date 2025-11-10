// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const ValidFailEqBytes = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*ValidFailEqBytes) !*ValidFailEqBytes {
        const self = try _arena.allocator().create(ValidFailEqBytes);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const ValidFailEqBytes) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *ValidFailEqBytes) !void {
        self.foo = try self._io.readBytes(self._allocator(), 2);
        if (!(_imp_std.mem.eql(u8, self.foo, &[_]u8{ 81, 65 }))) {
            return error.ValidationNotEqualError;
        }
    }
    foo: []const u8 = undefined,
    _root: ?*ValidFailEqBytes,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
