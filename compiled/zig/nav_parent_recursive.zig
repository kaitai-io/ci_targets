// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const NavParentRecursive = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*NavParentRecursive) !*NavParentRecursive {
        const self = try _arena.allocator().create(NavParentRecursive);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const NavParentRecursive) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *NavParentRecursive) !void {
        self.value = try self._io.readU1();
        if (self.value == 255) {
            self.next = try NavParentRecursive.create(self._arena, self._io, self, self._root);
        }
    }
    pub fn parentValue(self: *NavParentRecursive) !?u8 {
        if (self._m_parent_value) |_v|
            return _v;
        var _v: u8 = undefined;
        var _n = true;
        if (self.value != 255) {
            _n = false;
            _v = @as(*NavParentRecursive, self._parent.?).value;
        }
        if (_n) {
            self._m_parent_value = @as(?u8, null);
            return null;
        } else {
            self._m_parent_value = _v;
            return _v;
        }
    }
    _m_parent_value: ??u8 = null,
    value: u8 = undefined,
    next: ?*NavParentRecursive = null,
    _root: ?*NavParentRecursive,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
