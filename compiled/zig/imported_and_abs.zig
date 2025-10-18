// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");
const imported_root = @import("imported_root.zig");

pub const ImportedAndAbs = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*ImportedAndAbs) !*ImportedAndAbs {
        const self = try _arena.allocator().create(ImportedAndAbs);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const ImportedAndAbs) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *ImportedAndAbs) !void {
        self.one = try self._io.readU1();
        self.two = try imported_root.ImportedRoot.create(self._arena, self._io, null, null);
    }
    one: u8 = undefined,
    two: *imported_root.ImportedRoot = undefined,
    _root: ?*ImportedAndAbs,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
