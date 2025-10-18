// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");
const hello_world = @import("hello_world.zig");
const params_def_array_usertype_imported = @import("params_def_array_usertype_imported.zig");

pub const ImportsParamsDefArrayUsertypeImported = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*ImportsParamsDefArrayUsertypeImported) !*ImportsParamsDefArrayUsertypeImported {
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
    fn _allocator(self: *const ImportsParamsDefArrayUsertypeImported) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *ImportsParamsDefArrayUsertypeImported) !void {
        self.hws = try self._allocator().create(std.ArrayList(*hello_world.HelloWorld));
        self.hws.* = .empty;
        for (0..2) |i| {
            {
                const _maybe_unused = i;
                _ = _maybe_unused;
            }
            try self.hws.append(self._allocator(), try hello_world.HelloWorld.create(self._arena, self._io, null, null));
        }
        self.two = try params_def_array_usertype_imported.ParamsDefArrayUsertypeImported.create(self._arena, self._io, null, null, self.hws);
    }
    hws: *std.ArrayList(*hello_world.HelloWorld) = undefined,
    two: *params_def_array_usertype_imported.ParamsDefArrayUsertypeImported = undefined,
    _root: ?*ImportsParamsDefArrayUsertypeImported,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
