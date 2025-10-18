// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const StrEos = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*StrEos) !*StrEos {
        const self = try _arena.allocator().create(StrEos);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const StrEos) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *StrEos) !void {
        self.str = kaitai_struct.KaitaiStream.bytesToStr(try self._io.readBytesFull(self._allocator()), "UTF-8");
    }
    str: []u8 = undefined,
    _root: ?*StrEos,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
