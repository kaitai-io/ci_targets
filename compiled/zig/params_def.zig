// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const ParamsDef = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*ParamsDef, len: u32, has_trailer: bool) !*ParamsDef {
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
    fn _allocator(self: *const ParamsDef) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *ParamsDef) !void {
        self.buf = (try _imp_kaitai_struct.KaitaiStream.bytesToStr(self._allocator(), try self._io.readBytes(self._allocator(), self.len), "UTF-8"));
        if (self.has_trailer) {
            self.trailer = try self._io.readU1();
        }
    }
    buf: []const u8 = undefined,
    trailer: ?u8 = null,
    len: u32 = undefined,
    has_trailer: bool = undefined,
    _root: ?*ParamsDef,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
