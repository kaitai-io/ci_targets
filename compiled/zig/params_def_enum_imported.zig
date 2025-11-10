// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");
const _imp_enum_deep = @import("enum_deep.zig");
const _imp_enum_0 = @import("enum_0.zig");

pub const ParamsDefEnumImported = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*ParamsDefEnumImported, pet_1_param: _imp_enum_0.Enum0.Animal, pet_2_param: _imp_enum_deep.EnumDeep.Container1.Container2.Animal) !*ParamsDefEnumImported {
        const self = try _arena.allocator().create(ParamsDefEnumImported);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        self.pet_1_param = pet_1_param;
        self.pet_2_param = pet_2_param;
        try self._read();
        return self;
    }
    fn _allocator(self: *const ParamsDefEnumImported) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *ParamsDefEnumImported) !void {
        _ = self;
    }
    pet_1_param: _imp_enum_0.Enum0.Animal = undefined,
    pet_2_param: _imp_enum_deep.EnumDeep.Container1.Container2.Animal = undefined,
    _root: ?*ParamsDefEnumImported,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
