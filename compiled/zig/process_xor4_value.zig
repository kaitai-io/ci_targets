// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const ProcessXor4Value = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*ProcessXor4Value) !*ProcessXor4Value {
        const self = try _arena.allocator().create(ProcessXor4Value);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const ProcessXor4Value) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *ProcessXor4Value) !void {
        self.key = try self._io.readBytes(self._allocator(), 4);
        self._raw_buf = try self._io.readBytesFull(self._allocator());
        self.buf = kaitai_struct.KaitaiStream.processXor(self._raw_buf, self.key);
    }
    key: []u8 = undefined,
    buf: []u8 = undefined,
    _root: ?*ProcessXor4Value,
    _parent: ?*anyopaque,
    _raw_buf: []u8 = undefined,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
