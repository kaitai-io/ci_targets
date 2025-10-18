// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const EofExceptionU4 = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*EofExceptionU4) !*EofExceptionU4 {
        const self = try _arena.allocator().create(EofExceptionU4);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const EofExceptionU4) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *EofExceptionU4) !void {
        self.prebuf = try self._io.readBytes(self._allocator(), 9);
        self.fail_int = try self._io.readU4le();
    }
    prebuf: []u8 = undefined,
    fail_int: u32 = undefined,
    _root: ?*EofExceptionU4,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
