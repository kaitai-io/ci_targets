// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const ProcessRotate = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*ProcessRotate) !*ProcessRotate {
        const self = try _arena.allocator().create(ProcessRotate);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const ProcessRotate) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *ProcessRotate) !void {
        self._raw_buf1 = try self._io.readBytes(self._allocator(), 5);
        self.buf1 = kaitai_struct.KaitaiStream.processRotateLeft(self._raw_buf1, 3, 1);
        self._raw_buf2 = try self._io.readBytes(self._allocator(), 5);
        self.buf2 = kaitai_struct.KaitaiStream.processRotateLeft(self._raw_buf2, 8 - (3), 1);
        self.key = try self._io.readU1();
        self._raw_buf3 = try self._io.readBytes(self._allocator(), 5);
        self.buf3 = kaitai_struct.KaitaiStream.processRotateLeft(self._raw_buf3, self.key, 1);
    }
    buf1: []u8 = undefined,
    buf2: []u8 = undefined,
    key: u8 = undefined,
    buf3: []u8 = undefined,
    _root: ?*ProcessRotate,
    _parent: ?*anyopaque,
    _raw_buf1: []u8 = undefined,
    _raw_buf2: []u8 = undefined,
    _raw_buf3: []u8 = undefined,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
