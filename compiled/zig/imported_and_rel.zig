// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");
const imported_root = @import("imported_root.zig");

pub const ImportedAndRel = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*ImportedAndRel) !*ImportedAndRel {
        const self = try _arena.allocator().create(ImportedAndRel);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const ImportedAndRel) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *ImportedAndRel) !void {
        self.one = try self._io.readU1();
        self.two = try imported_root.ImportedRoot.create(self._arena, self._io, null, null);
    }
    one: u8 = undefined,
    two: *imported_root.ImportedRoot = undefined,
    _root: ?*ImportedAndRel,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
