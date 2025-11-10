// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");
const _imp_nested_types3 = @import("nested_types3.zig");

pub const NestedTypesImport = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*NestedTypesImport) !*NestedTypesImport {
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
    fn _allocator(self: *const NestedTypesImport) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *NestedTypesImport) !void {
        self.a_cc = try _imp_nested_types3.NestedTypes3.SubtypeA.SubtypeCc.create(self._arena, self._io, null, null);
        self.a_c_d = try _imp_nested_types3.NestedTypes3.SubtypeA.SubtypeC.SubtypeD.create(self._arena, self._io, null, null);
        self.b = try _imp_nested_types3.NestedTypes3.SubtypeB.create(self._arena, self._io, null, null);
    }
    a_cc: *_imp_nested_types3.NestedTypes3.SubtypeA.SubtypeCc = undefined,
    a_c_d: *_imp_nested_types3.NestedTypes3.SubtypeA.SubtypeC.SubtypeD = undefined,
    b: *_imp_nested_types3.NestedTypes3.SubtypeB = undefined,
    _root: ?*NestedTypesImport,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
