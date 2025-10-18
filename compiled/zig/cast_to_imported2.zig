// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");
const hello_world = @import("hello_world.zig");

pub const CastToImported2 = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*CastToImported2, hw_param: *anyopaque) !*CastToImported2 {
        const self = try _arena.allocator().create(CastToImported2);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        self.hw_param = hw_param;
        try self._read();
        return self;
    }
    fn _allocator(self: *const CastToImported2) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *CastToImported2) !void {
        _ = self;
    }
    pub fn hw(self: *CastToImported2) !*hello_world.HelloWorld {
        if (self._m_hw) |_v|
            return _v;
        var _v: *hello_world.HelloWorld = undefined;
        _v = @as(*hello_world.HelloWorld, self.hw_param);
        self._m_hw = _v;
        return _v;
    }
    _m_hw: ?*hello_world.HelloWorld = null,
    hw_param: *anyopaque = undefined,
    _root: ?*CastToImported2,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
