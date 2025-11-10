// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const InstanceInRepeatUntil = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*InstanceInRepeatUntil) !*InstanceInRepeatUntil {
        const self = try _arena.allocator().create(InstanceInRepeatUntil);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const InstanceInRepeatUntil) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *InstanceInRepeatUntil) !void {
        self.entries = try self._allocator().create(_imp_std.ArrayList(i16));
        self.entries.* = .empty;
        {
            var i: usize = 0;
            while (true) : (i += 1) {
                const _it = try self._io.readS2le();
                try self.entries.append(self._allocator(), _it);
                if (_it == (try self.untilVal())) {
                    break;
                }
            }
        }
    }
    pub fn untilVal(self: *InstanceInRepeatUntil) !i16 {
        if (self._m_until_val) |_v|
            return _v;
        var _v: i16 = undefined;
        const _pos = self._io.pos();
        try self._io.seek(self._io.pos() + 12);
        _v = try self._io.readS2le();
        try self._io.seek(_pos);
        self._m_until_val = _v;
        return _v;
    }
    _m_until_val: ?i16 = null,
    entries: *_imp_std.ArrayList(i16) = undefined,
    _root: ?*InstanceInRepeatUntil,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
