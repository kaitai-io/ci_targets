// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");
const params_def = @import("params_def.zig");

pub const OpaqueWithParam = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*OpaqueWithParam) !*OpaqueWithParam {
        const self = try _arena.allocator().create(OpaqueWithParam);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const OpaqueWithParam) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *OpaqueWithParam) !void {
        self.one = try params_def.ParamsDef.create(self._arena, self._io, null, null, 5, true);
    }
    one: *params_def.ParamsDef = undefined,
    _root: ?*OpaqueWithParam,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
