// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const ValidFailEqInt = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*ValidFailEqInt) !*ValidFailEqInt {
        const self = try _arena.allocator().create(ValidFailEqInt);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const ValidFailEqInt) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *ValidFailEqInt) !void {
        self.foo = try self._io.readU1();
        if (!(self.foo == 123)) {
            return error.ValidationNotEqualError;
        }
    }
    foo: u8 = undefined,
    _root: ?*ValidFailEqInt,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
