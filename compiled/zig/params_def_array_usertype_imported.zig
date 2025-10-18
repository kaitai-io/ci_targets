// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");
const hello_world = @import("hello_world.zig");

pub const ParamsDefArrayUsertypeImported = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*ParamsDefArrayUsertypeImported, hws_param: *std.ArrayList(*hello_world.HelloWorld)) !*ParamsDefArrayUsertypeImported {
        const self = try _arena.allocator().create(ParamsDefArrayUsertypeImported);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        self.hws_param = hws_param;
        try self._read();
        return self;
    }
    fn _allocator(self: *const ParamsDefArrayUsertypeImported) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *ParamsDefArrayUsertypeImported) !void {
        _ = self;
    }
    pub fn hw0One(self: *ParamsDefArrayUsertypeImported) !u8 {
        if (self._m_hw0_one) |_v|
            return _v;
        var _v: u8 = undefined;
        _v = self.hws_param.items[0].one;
        self._m_hw0_one = _v;
        return _v;
    }
    pub fn hw1One(self: *ParamsDefArrayUsertypeImported) !u8 {
        if (self._m_hw1_one) |_v|
            return _v;
        var _v: u8 = undefined;
        _v = self.hws_param.items[1].one;
        self._m_hw1_one = _v;
        return _v;
    }
    _m_hw0_one: ?u8 = null,
    _m_hw1_one: ?u8 = null,
    hws_param: *std.ArrayList(*hello_world.HelloWorld) = undefined,
    _root: ?*ParamsDefArrayUsertypeImported,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
