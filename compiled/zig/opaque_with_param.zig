// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");
const _imp_params_def = @import("params_def.zig");

pub const OpaqueWithParam = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*OpaqueWithParam) !*OpaqueWithParam {
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
    fn _allocator(self: *const OpaqueWithParam) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *OpaqueWithParam) !void {
        self.one = try _imp_params_def.ParamsDef.create(self._arena, self._io, null, null, 5, true);
    }
    one: *_imp_params_def.ParamsDef = undefined,
    _root: ?*OpaqueWithParam,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
