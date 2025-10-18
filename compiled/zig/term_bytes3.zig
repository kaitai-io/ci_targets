// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const TermBytes3 = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*TermBytes3) !*TermBytes3 {
        const self = try _arena.allocator().create(TermBytes3);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const TermBytes3) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *TermBytes3) !void {
        self.s1 = try self._io.readBytesTerm(self._allocator(), 124, false, false, true);
        self.s2 = try self._io.readBytesTerm(self._allocator(), 64, false, false, true);
        self.s3 = try self._io.readBytesTerm(self._allocator(), 64, false, true, true);
    }
    s1: []u8 = undefined,
    s2: []u8 = undefined,
    s3: []u8 = undefined,
    _root: ?*TermBytes3,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
