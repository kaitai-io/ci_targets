// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const ValidFailContents = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*ValidFailContents) !*ValidFailContents {
        const self = try _arena.allocator().create(ValidFailContents);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const ValidFailContents) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *ValidFailContents) !void {
        self.foo = try self._io.readBytes(self._allocator(), 2);
        if (!(std.mem.eql(u8, self.foo, &[_]u8{ 81, 65 }))) {
            return error.ValidationNotEqualError;
        }
    }
    foo: []u8 = undefined,
    _root: ?*ValidFailContents,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
