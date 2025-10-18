// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const ValidFailAnyofInt = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*ValidFailAnyofInt) !*ValidFailAnyofInt {
        const self = try _arena.allocator().create(ValidFailAnyofInt);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const ValidFailAnyofInt) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *ValidFailAnyofInt) !void {
        self.foo = try self._io.readU1();
        if (!( ((self.foo == 5) or (self.foo == 6) or (self.foo == 7) or (self.foo == 8) or (self.foo == 10) or (self.foo == 11) or (self.foo == 12) or (self.foo == 47)) )) {
            return error.ValidationNotAnyOfError;
        }
    }
    foo: u8 = undefined,
    _root: ?*ValidFailAnyofInt,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
