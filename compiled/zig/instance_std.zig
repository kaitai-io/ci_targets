// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const InstanceStd = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*InstanceStd) !*InstanceStd {
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
    fn _allocator(self: *const InstanceStd) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *InstanceStd) !void {
        _ = self;
    }
    pub fn header(self: *InstanceStd) ![]const u8 {
        if (self._m_header) |_v|
            return _v;
        var _v: []const u8 = undefined;
        const _pos = self._io.pos();
        try self._io.seek(2);
        _v = (try _imp_kaitai_struct.KaitaiStream.bytesToStr(self._allocator(), try self._io.readBytes(self._allocator(), 5), "ASCII"));
        try self._io.seek(_pos);
        self._m_header = _v;
        return _v;
    }
    _m_header: ?[]const u8 = null,
    _root: ?*InstanceStd,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
