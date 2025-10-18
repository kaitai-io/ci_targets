// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");
const vlq_base128_le = @import("vlq_base128_le.zig");

pub const ImportsAbs = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*ImportsAbs) !*ImportsAbs {
        const self = try _arena.allocator().create(ImportsAbs);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const ImportsAbs) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *ImportsAbs) !void {
        self.len = try vlq_base128_le.VlqBase128Le.create(self._arena, self._io, null, null);
        self.body = try self._io.readBytes(self._allocator(), (try self.len.value()));
    }
    len: *vlq_base128_le.VlqBase128Le = undefined,
    body: []u8 = undefined,
    _root: ?*ImportsAbs,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
