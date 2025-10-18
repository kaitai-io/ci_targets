// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const InstanceStd = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*InstanceStd) !*InstanceStd {
        const self = try _arena.allocator().create(InstanceStd);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const InstanceStd) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *InstanceStd) !void {
        _ = self;
    }
    pub fn header(self: *InstanceStd) ![]u8 {
        if (self._m_header) |_v|
            return _v;
        var _v: []u8 = undefined;
        const _pos = self._io.pos();
        try self._io.seek(2);
        _v = kaitai_struct.KaitaiStream.bytesToStr(try self._io.readBytes(self._allocator(), 5), "ASCII");
        try self._io.seek(_pos);
        self._m_header = _v;
        return _v;
    }
    _m_header: ?[]u8 = null,
    _root: ?*InstanceStd,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
