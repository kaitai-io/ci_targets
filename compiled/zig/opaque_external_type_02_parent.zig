// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");
const opaque_external_type_02_child = @import("opaque_external_type_02_child.zig");

pub const OpaqueExternalType02Parent = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*OpaqueExternalType02Parent) !*OpaqueExternalType02Parent {
        const self = try _arena.allocator().create(OpaqueExternalType02Parent);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const OpaqueExternalType02Parent) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *OpaqueExternalType02Parent) !void {
        self.parent = try ParentObj.create(self._arena, self._io, self, self._root);
    }
    pub const ParentObj = struct {
        pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*OpaqueExternalType02Parent, _root: ?*OpaqueExternalType02Parent) !*ParentObj {
            const self = try _arena.allocator().create(ParentObj);
            self.* = .{
                ._arena = _arena,
                ._io = _io,
                ._parent = _parent,
                ._root = _root,
            };
            try self._read();
            return self;
        }
        fn _allocator(self: *const ParentObj) std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *ParentObj) !void {
            self.child = try opaque_external_type_02_child.OpaqueExternalType02Child.create(self._arena, self._io, null, null);
        }
        child: *opaque_external_type_02_child.OpaqueExternalType02Child = undefined,
        _root: ?*OpaqueExternalType02Parent,
        _parent: ?*OpaqueExternalType02Parent,
        _arena: *std.heap.ArenaAllocator,
        _io: *kaitai_struct.KaitaiStream,
    };
    parent: *ParentObj = undefined,
    _root: ?*OpaqueExternalType02Parent,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
