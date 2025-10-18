// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");
const enum_0 = @import("enum_0.zig");
const enum_deep = @import("enum_deep.zig");

pub const EnumImportLiterals = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*EnumImportLiterals) !*EnumImportLiterals {
        const self = try _arena.allocator().create(EnumImportLiterals);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const EnumImportLiterals) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *EnumImportLiterals) !void {
        _ = self;
    }
    pub fn pet1Eq(self: *EnumImportLiterals) !bool {
        if (self._m_pet_1_eq) |_v|
            return _v;
        var _v: bool = undefined;
        _v = (if (true) enum_0.Enum0.Animal.chicken else enum_0.Enum0.Animal.dog) == enum_0.Enum0.Animal.chicken;
        self._m_pet_1_eq = _v;
        return _v;
    }
    pub fn pet1ToI(self: *EnumImportLiterals) !i32 {
        if (self._m_pet_1_to_i) |_v|
            return _v;
        var _v: i32 = undefined;
        _v = @intFromEnum(enum_0.Enum0.Animal.cat);
        self._m_pet_1_to_i = _v;
        return _v;
    }
    pub fn pet2(self: *EnumImportLiterals) !enum_deep.EnumDeep.Container1.Container2.Animal {
        if (self._m_pet_2) |_v|
            return _v;
        var _v: enum_deep.EnumDeep.Container1.Container2.Animal = undefined;
        _v = enum_deep.EnumDeep.Container1.Container2.Animal.hare;
        self._m_pet_2 = _v;
        return _v;
    }
    _m_pet_1_eq: ?bool = null,
    _m_pet_1_to_i: ?i32 = null,
    _m_pet_2: ?enum_deep.EnumDeep.Container1.Container2.Animal = null,
    _root: ?*EnumImportLiterals,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
