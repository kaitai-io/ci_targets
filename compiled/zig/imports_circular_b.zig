// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");
const imports_circular_a = @import("imports_circular_a.zig");

pub const ImportsCircularB = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*ImportsCircularB) !*ImportsCircularB {
        const self = try _arena.allocator().create(ImportsCircularB);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const ImportsCircularB) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *ImportsCircularB) !void {
        self.initial = try self._io.readU1();
        if (self.initial == 65) {
            self.back_ref = try imports_circular_a.ImportsCircularA.create(self._arena, self._io, null, null);
        }
    }
    initial: u8 = undefined,
    back_ref: ?*imports_circular_a.ImportsCircularA = null,
    _root: ?*ImportsCircularB,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
