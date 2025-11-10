// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const ProcessRotate = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*ProcessRotate) !*ProcessRotate {
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
    fn _allocator(self: *const ProcessRotate) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *ProcessRotate) !void {
        const _raw_buf1 = try self._io.readBytes(self._allocator(), 5);
        self.buf1 = try _imp_kaitai_struct.KaitaiStream.processRotateLeft(self._allocator(), _raw_buf1, 3);
        const _raw_buf2 = try self._io.readBytes(self._allocator(), 5);
        self.buf2 = try _imp_kaitai_struct.KaitaiStream.processRotateLeft(self._allocator(), _raw_buf2, 8 - (3));
        self.key = try self._io.readU1();
        const _raw_buf3 = try self._io.readBytes(self._allocator(), 5);
        self.buf3 = try _imp_kaitai_struct.KaitaiStream.processRotateLeft(self._allocator(), _raw_buf3, self.key);
    }
    buf1: []const u8 = undefined,
    buf2: []const u8 = undefined,
    key: u8 = undefined,
    buf3: []const u8 = undefined,
    _root: ?*ProcessRotate,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
