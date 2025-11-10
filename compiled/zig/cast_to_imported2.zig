// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");
const _imp_hello_world = @import("hello_world.zig");

pub const CastToImported2 = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*CastToImported2, hw_param: *anyopaque) !*CastToImported2 {
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
    fn _allocator(self: *const CastToImported2) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *CastToImported2) !void {
        _ = self;
    }
    pub fn hw(self: *CastToImported2) !*_imp_hello_world.HelloWorld {
        if (self._m_hw) |_v|
            return _v;
        var _v: *_imp_hello_world.HelloWorld = undefined;
        _v = @as(*_imp_hello_world.HelloWorld, self.hw_param);
        self._m_hw = _v;
        return _v;
    }
    _m_hw: ?*_imp_hello_world.HelloWorld = null,
    hw_param: *anyopaque = undefined,
    _root: ?*CastToImported2,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
