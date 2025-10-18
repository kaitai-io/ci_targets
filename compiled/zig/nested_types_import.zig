// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");
const nested_types3 = @import("nested_types3.zig");

pub const NestedTypesImport = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*NestedTypesImport) !*NestedTypesImport {
        const self = try _arena.allocator().create(NestedTypesImport);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const NestedTypesImport) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *NestedTypesImport) !void {
        self.a_cc = try nested_types3.NestedTypes3.SubtypeA.SubtypeCc.create(self._arena, self._io, null, null);
        self.a_c_d = try nested_types3.NestedTypes3.SubtypeA.SubtypeC.SubtypeD.create(self._arena, self._io, null, null);
        self.b = try nested_types3.NestedTypes3.SubtypeB.create(self._arena, self._io, null, null);
    }
    a_cc: *nested_types3.NestedTypes3.SubtypeA.SubtypeCc = undefined,
    a_c_d: *nested_types3.NestedTypes3.SubtypeA.SubtypeC.SubtypeD = undefined,
    b: *nested_types3.NestedTypes3.SubtypeB = undefined,
    _root: ?*NestedTypesImport,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
