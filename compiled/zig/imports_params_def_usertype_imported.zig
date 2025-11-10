// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");
const _imp_hello_world = @import("hello_world.zig");
const _imp_params_def_usertype_imported = @import("params_def_usertype_imported.zig");

pub const ImportsParamsDefUsertypeImported = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*ImportsParamsDefUsertypeImported) !*ImportsParamsDefUsertypeImported {
        const self = try _arena.allocator().create(ImportsParamsDefUsertypeImported);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const ImportsParamsDefUsertypeImported) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *ImportsParamsDefUsertypeImported) !void {
        self.hw = try _imp_hello_world.HelloWorld.create(self._arena, self._io, null, null);
        self.two = try _imp_params_def_usertype_imported.ParamsDefUsertypeImported.create(self._arena, self._io, null, null, self.hw);
    }
    hw: *_imp_hello_world.HelloWorld = undefined,
    two: *_imp_params_def_usertype_imported.ParamsDefUsertypeImported = undefined,
    _root: ?*ImportsParamsDefUsertypeImported,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
