// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const NavRootRecursive = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*NavRootRecursive) !*NavRootRecursive {
        const self = try _arena.allocator().create(NavRootRecursive);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const NavRootRecursive) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *NavRootRecursive) !void {
        self.value = try self._io.readU1();
        if (self.value == 255) {
            self.next = try NavRootRecursive.create(self._arena, self._io, self, self._root);
        }
    }
    pub fn rootValue(self: *NavRootRecursive) !u8 {
        if (self._m_root_value) |_v|
            return _v;
        var _v: u8 = undefined;
        _v = self._root.?.value;
        self._m_root_value = _v;
        return _v;
    }
    _m_root_value: ?u8 = null,
    value: u8 = undefined,
    next: ?*NavRootRecursive = null,
    _root: ?*NavRootRecursive,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
