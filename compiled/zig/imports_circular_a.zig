// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");
const imports_circular_b = @import("imports_circular_b.zig");

pub const ImportsCircularA = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*ImportsCircularA) !*ImportsCircularA {
        const self = try _arena.allocator().create(ImportsCircularA);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const ImportsCircularA) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *ImportsCircularA) !void {
        self.code = try self._io.readU1();
        self.two = try imports_circular_b.ImportsCircularB.create(self._arena, self._io, null, null);
    }
    code: u8 = undefined,
    two: *imports_circular_b.ImportsCircularB = undefined,
    _root: ?*ImportsCircularA,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
