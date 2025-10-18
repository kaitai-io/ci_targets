// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");
const imported_2 = @import("imported_2.zig");

pub const Imported1 = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*Imported1) !*Imported1 {
        const self = try _arena.allocator().create(Imported1);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const Imported1) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *Imported1) !void {
        self.one = try self._io.readU1();
        self.two = try imported_2.Imported2.create(self._arena, self._io, null, null);
    }
    one: u8 = undefined,
    two: *imported_2.Imported2 = undefined,
    _root: ?*Imported1,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
