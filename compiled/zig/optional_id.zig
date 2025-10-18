// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const OptionalId = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*OptionalId) !*OptionalId {
        const self = try _arena.allocator().create(OptionalId);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const OptionalId) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *OptionalId) !void {
        self._unnamed0 = try self._io.readU1();
        self._unnamed1 = try self._io.readU1();
        self._unnamed2 = try self._io.readBytes(self._allocator(), 5);
    }
    _unnamed0: u8 = undefined,
    _unnamed1: u8 = undefined,
    _unnamed2: []u8 = undefined,
    _root: ?*OptionalId,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
