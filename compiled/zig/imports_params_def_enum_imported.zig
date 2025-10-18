// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");
const params_def_enum_imported = @import("params_def_enum_imported.zig");
const enum_import_seq = @import("enum_import_seq.zig");

pub const ImportsParamsDefEnumImported = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*ImportsParamsDefEnumImported) !*ImportsParamsDefEnumImported {
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
    fn _allocator(self: *const ImportsParamsDefEnumImported) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *ImportsParamsDefEnumImported) !void {
        self.one = try enum_import_seq.EnumImportSeq.create(self._arena, self._io, null, null);
        self.two = try params_def_enum_imported.ParamsDefEnumImported.create(self._arena, self._io, null, null, self.one.pet_1, self.one.pet_2);
    }
    one: *enum_import_seq.EnumImportSeq = undefined,
    two: *params_def_enum_imported.ParamsDefEnumImported = undefined,
    _root: ?*ImportsParamsDefEnumImported,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
