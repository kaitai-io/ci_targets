// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");
const imported_1 = @import("imported_1.zig");

pub const ImportsRel1 = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*ImportsRel1) !*ImportsRel1 {
        const self = try _arena.allocator().create(ImportsRel1);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const ImportsRel1) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *ImportsRel1) !void {
        self.one = try self._io.readU1();
        self.two = try imported_1.Imported1.create(self._arena, self._io, null, null);
    }
    one: u8 = undefined,
    two: *imported_1.Imported1 = undefined,
    _root: ?*ImportsRel1,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
