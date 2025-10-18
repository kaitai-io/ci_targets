// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const ImportedRoot = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*ImportedRoot) !*ImportedRoot {
        const self = try _arena.allocator().create(ImportedRoot);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const ImportedRoot) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *ImportedRoot) !void {
        self.one = try self._io.readU1();
    }
    one: u8 = undefined,
    _root: ?*ImportedRoot,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
