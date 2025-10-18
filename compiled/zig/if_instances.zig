// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const IfInstances = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*IfInstances) !*IfInstances {
        const self = try _arena.allocator().create(IfInstances);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const IfInstances) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *IfInstances) !void {
        _ = self;
    }
    pub fn neverHappens(self: *IfInstances) !?u8 {
        if (self._m_never_happens) |_v|
            return _v;
        var _v: ?u8 = null;
        if (false) {
            const _pos = self._io.pos();
            try self._io.seek(100500);
            _v = try self._io.readU1();
            try self._io.seek(_pos);
        }
        self._m_never_happens = _v;
        return _v;
    }
    _m_never_happens: ??u8 = null,
    _root: ?*IfInstances,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
