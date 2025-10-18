// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const ParamsDef = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*ParamsDef, len: u32, has_trailer: bool) !*ParamsDef {
        const self = try _arena.allocator().create(ParamsDef);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        self.len = len;
        self.has_trailer = has_trailer;
        try self._read();
        return self;
    }
    fn _allocator(self: *const ParamsDef) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *ParamsDef) !void {
        self.buf = kaitai_struct.KaitaiStream.bytesToStr(try self._io.readBytes(self._allocator(), self.len), "UTF-8");
        if (self.has_trailer) {
            self.trailer = try self._io.readU1();
        }
    }
    buf: []u8 = undefined,
    trailer: ?u8 = null,
    len: u32 = undefined,
    has_trailer: bool = undefined,
    _root: ?*ParamsDef,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
