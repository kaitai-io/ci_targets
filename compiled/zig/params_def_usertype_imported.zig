// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");
const hello_world = @import("hello_world.zig");

pub const ParamsDefUsertypeImported = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*ParamsDefUsertypeImported, hw_param: *hello_world.HelloWorld) !*ParamsDefUsertypeImported {
        const self = try _arena.allocator().create(ParamsDefUsertypeImported);
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
    fn _allocator(self: *const ParamsDefUsertypeImported) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *ParamsDefUsertypeImported) !void {
        _ = self;
    }
    pub fn hwOne(self: *ParamsDefUsertypeImported) !u8 {
        if (self._m_hw_one) |_v|
            return _v;
        var _v: u8 = undefined;
        _v = self.hw_param.one;
        self._m_hw_one = _v;
        return _v;
    }
    _m_hw_one: ?u8 = null,
    hw_param: *hello_world.HelloWorld = undefined,
    _root: ?*ParamsDefUsertypeImported,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
