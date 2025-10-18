// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const BitsShiftByB64Le = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*BitsShiftByB64Le) !*BitsShiftByB64Le {
        const self = try _arena.allocator().create(BitsShiftByB64Le);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const BitsShiftByB64Le) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *BitsShiftByB64Le) !void {
        self.a = try self._io.readBitsIntLe(64);
        self.b = try self._io.readBitsIntLe(8);
    }
    a: u64 = undefined,
    b: u64 = undefined,
    _root: ?*BitsShiftByB64Le,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
