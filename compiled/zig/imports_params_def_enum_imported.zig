// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");
const _imp_params_def_enum_imported = @import("params_def_enum_imported.zig");
const _imp_enum_import_seq = @import("enum_import_seq.zig");

pub const ImportsParamsDefEnumImported = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*ImportsParamsDefEnumImported) !*ImportsParamsDefEnumImported {
        const self = try _arena.allocator().create(ImportsParamsDefEnumImported);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const ImportsParamsDefEnumImported) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *ImportsParamsDefEnumImported) !void {
        self.one = try _imp_enum_import_seq.EnumImportSeq.create(self._arena, self._io, null, null);
        self.two = try _imp_params_def_enum_imported.ParamsDefEnumImported.create(self._arena, self._io, null, null, self.one.pet_1, self.one.pet_2);
    }
    one: *_imp_enum_import_seq.EnumImportSeq = undefined,
    two: *_imp_params_def_enum_imported.ParamsDefEnumImported = undefined,
    _root: ?*ImportsParamsDefEnumImported,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
