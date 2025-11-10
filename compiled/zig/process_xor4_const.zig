// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const ProcessXor4Const = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*ProcessXor4Const) !*ProcessXor4Const {
        const self = try _arena.allocator().create(ProcessXor4Const);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const ProcessXor4Const) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *ProcessXor4Const) !void {
        self.key = try self._io.readBytes(self._allocator(), 4);
        const _raw_buf = try self._io.readBytesFull(self._allocator());
        self.buf = try _imp_kaitai_struct.KaitaiStream.processXorMany(self._allocator(), _raw_buf, &[_]u8{ 236, 187, 163, 20 });
    }
    key: []const u8 = undefined,
    buf: []const u8 = undefined,
    _root: ?*ProcessXor4Const,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
