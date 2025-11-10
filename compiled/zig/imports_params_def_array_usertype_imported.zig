// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");
const _imp_hello_world = @import("hello_world.zig");
const _imp_params_def_array_usertype_imported = @import("params_def_array_usertype_imported.zig");

pub const ImportsParamsDefArrayUsertypeImported = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*ImportsParamsDefArrayUsertypeImported) !*ImportsParamsDefArrayUsertypeImported {
        const self = try _arena.allocator().create(ImportsParamsDefArrayUsertypeImported);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const ImportsParamsDefArrayUsertypeImported) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *ImportsParamsDefArrayUsertypeImported) !void {
        self.hws = try self._allocator().create(_imp_std.ArrayList(*_imp_hello_world.HelloWorld));
        self.hws.* = .empty;
        for (0..2) |i| {
            {
                const _maybe_unused = i;
                _ = _maybe_unused;
            }
            try self.hws.append(self._allocator(), try _imp_hello_world.HelloWorld.create(self._arena, self._io, null, null));
        }
        self.two = try _imp_params_def_array_usertype_imported.ParamsDefArrayUsertypeImported.create(self._arena, self._io, null, null, self.hws);
    }
    hws: *_imp_std.ArrayList(*_imp_hello_world.HelloWorld) = undefined,
    two: *_imp_params_def_array_usertype_imported.ParamsDefArrayUsertypeImported = undefined,
    _root: ?*ImportsParamsDefArrayUsertypeImported,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
