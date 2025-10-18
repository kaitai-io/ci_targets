// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");
const imported_and_rel = @import("imported_and_rel.zig");

pub const ImportsAbsRel = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*ImportsAbsRel) !*ImportsAbsRel {
        const self = try _arena.allocator().create(ImportsAbsRel);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const ImportsAbsRel) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *ImportsAbsRel) !void {
        self.one = try self._io.readU1();
        self.two = try imported_and_rel.ImportedAndRel.create(self._arena, self._io, null, null);
    }
    one: u8 = undefined,
    two: *imported_and_rel.ImportedAndRel = undefined,
    _root: ?*ImportsAbsRel,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
