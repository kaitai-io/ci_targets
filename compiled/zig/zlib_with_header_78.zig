// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const ZlibWithHeader78 = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*ZlibWithHeader78) !*ZlibWithHeader78 {
        const self = try _arena.allocator().create(ZlibWithHeader78);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const ZlibWithHeader78) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *ZlibWithHeader78) !void {
        self._raw_data = try self._io.readBytesFull(self._allocator());
        self.data = kaitai_struct.KaitaiStream.processZlib(self._raw_data);
    }
    data: []u8 = undefined,
    _root: ?*ZlibWithHeader78,
    _parent: ?*anyopaque,
    _raw_data: []u8 = undefined,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
