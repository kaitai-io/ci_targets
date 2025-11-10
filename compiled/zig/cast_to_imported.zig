// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");
const _imp_hello_world = @import("hello_world.zig");

pub const CastToImported = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*CastToImported, hw_param: *anyopaque) !*CastToImported {
        const self = try _arena.allocator().create(CastToImported);
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
    fn _allocator(self: *const CastToImported) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *CastToImported) !void {
        _ = self;
    }
    pub fn hwOne(self: *CastToImported) !u8 {
        if (self._m_hw_one) |_v|
            return _v;
        var _v: u8 = undefined;
        _v = @as(*_imp_hello_world.HelloWorld, self.hw_param).one;
        self._m_hw_one = _v;
        return _v;
    }
    _m_hw_one: ?u8 = null,
    hw_param: *anyopaque = undefined,
    _root: ?*CastToImported,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
