// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const EofExceptionBytes = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*EofExceptionBytes) !*EofExceptionBytes {
        const self = try _arena.allocator().create(EofExceptionBytes);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const EofExceptionBytes) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *EofExceptionBytes) !void {
        self.buf = try self._io.readBytes(self._allocator(), 13);
    }
    buf: []const u8 = undefined,
    _root: ?*EofExceptionBytes,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
