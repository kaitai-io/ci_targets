// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");
const hello_world = @import("hello_world.zig");

pub const Imports0 = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*Imports0) !*Imports0 {
        const self = try _arena.allocator().create(Imports0);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const Imports0) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *Imports0) !void {
        self.two = try self._io.readU1();
        self.hw = try hello_world.HelloWorld.create(self._arena, self._io, null, null);
    }
    pub fn hwOne(self: *Imports0) !u8 {
        if (self._m_hw_one) |_v|
            return _v;
        var _v: u8 = undefined;
        _v = self.hw.one;
        self._m_hw_one = _v;
        return _v;
    }
    _m_hw_one: ?u8 = null,
    two: u8 = undefined,
    hw: *hello_world.HelloWorld = undefined,
    _root: ?*Imports0,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
