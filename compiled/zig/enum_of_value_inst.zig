// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const EnumOfValueInst = struct {
    pub const Animal = enum(i32) {
        dog = 4,
        cat = 7,
        chicken = 12,
        _,
    };
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*EnumOfValueInst) !*EnumOfValueInst {
        const self = try _arena.allocator().create(EnumOfValueInst);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const EnumOfValueInst) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *EnumOfValueInst) !void {
        self.pet_1 = @as(EnumOfValueInst.Animal, @enumFromInt(try self._io.readU4le()));
        self.pet_2 = @as(EnumOfValueInst.Animal, @enumFromInt(try self._io.readU4le()));
    }
    pub fn pet3(self: *EnumOfValueInst) !Animal {
        if (self._m_pet_3) |_v|
            return _v;
        var _v: Animal = undefined;
        _v = @as(EnumOfValueInst.Animal, @enumFromInt((if (self.pet_1 == EnumOfValueInst.Animal.cat) 4 else 12)));
        self._m_pet_3 = _v;
        return _v;
    }
    pub fn pet4(self: *EnumOfValueInst) !Animal {
        if (self._m_pet_4) |_v|
            return _v;
        var _v: Animal = undefined;
        _v = (if (self.pet_1 == EnumOfValueInst.Animal.cat) EnumOfValueInst.Animal.dog else EnumOfValueInst.Animal.chicken);
        self._m_pet_4 = _v;
        return _v;
    }
    _m_pet_3: ?Animal = null,
    _m_pet_4: ?Animal = null,
    pet_1: Animal = undefined,
    pet_2: Animal = undefined,
    _root: ?*EnumOfValueInst,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
