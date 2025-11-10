// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const ZlibWithHeader78 = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*ZlibWithHeader78) !*ZlibWithHeader78 {
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
    fn _allocator(self: *const ZlibWithHeader78) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *ZlibWithHeader78) !void {
        const _raw_data = try self._io.readBytesFull(self._allocator());
        self.data = try _imp_kaitai_struct.KaitaiStream.processZlib(self._allocator(), _raw_data);
    }
    data: []const u8 = undefined,
    _root: ?*ZlibWithHeader78,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
