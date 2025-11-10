// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");
const _imp_enum_to_i_class_border_2 = @import("enum_to_i_class_border_2.zig");

pub const EnumToIClassBorder1 = struct {
    pub const Animal = enum(i32) {
        dog = 4,
        cat = 7,
        chicken = 12,
        _,
    };
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*EnumToIClassBorder1) !*EnumToIClassBorder1 {
        const self = try _arena.allocator().create(EnumToIClassBorder1);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const EnumToIClassBorder1) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *EnumToIClassBorder1) !void {
        self.pet_1 = @as(EnumToIClassBorder1.Animal, @enumFromInt(try self._io.readU4le()));
        self.pet_2 = @as(EnumToIClassBorder1.Animal, @enumFromInt(try self._io.readU4le()));
    }
    pub fn checker(self: *EnumToIClassBorder1) !*_imp_enum_to_i_class_border_2.EnumToIClassBorder2 {
        if (self._m_checker) |_v|
            return _v;
        var _v: *_imp_enum_to_i_class_border_2.EnumToIClassBorder2 = undefined;
        const _pos = self._io.pos();
        try self._io.seek(0);
        _v = try _imp_enum_to_i_class_border_2.EnumToIClassBorder2.create(self._arena, self._io, null, null, self._root.?);
        try self._io.seek(_pos);
        self._m_checker = _v;
        return _v;
    }
    pub fn someDog(self: *EnumToIClassBorder1) !Animal {
        if (self._m_some_dog) |_v|
            return _v;
        var _v: Animal = undefined;
        _v = @as(EnumToIClassBorder1.Animal, @enumFromInt(4));
        self._m_some_dog = _v;
        return _v;
    }
    _m_checker: ?*_imp_enum_to_i_class_border_2.EnumToIClassBorder2 = null,
    _m_some_dog: ?Animal = null,
    pet_1: Animal = undefined,
    pet_2: Animal = undefined,
    _root: ?*EnumToIClassBorder1,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
