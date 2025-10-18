// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const EnumToI = struct {
    pub const Animal = enum(i32) {
        dog = 4,
        cat = 7,
        chicken = 12,
        _,
    };
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*EnumToI) !*EnumToI {
        const self = try _arena.allocator().create(EnumToI);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const EnumToI) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *EnumToI) !void {
        self.pet_1 = @as(EnumToI.Animal, @enumFromInt(try self._io.readU4le()));
        self.pet_2 = @as(EnumToI.Animal, @enumFromInt(try self._io.readU4le()));
    }
    pub fn oneLtTwo(self: *EnumToI) !bool {
        if (self._m_one_lt_two) |_v|
            return _v;
        var _v: bool = undefined;
        _v = @intFromEnum(self.pet_1) < @intFromEnum(self.pet_2);
        self._m_one_lt_two = _v;
        return _v;
    }
    pub fn pet1EqInt(self: *EnumToI) !bool {
        if (self._m_pet_1_eq_int) |_v|
            return _v;
        var _v: bool = undefined;
        _v = @intFromEnum(self.pet_1) == 7;
        self._m_pet_1_eq_int = _v;
        return _v;
    }
    pub fn pet1I(self: *EnumToI) !i32 {
        if (self._m_pet_1_i) |_v|
            return _v;
        var _v: i32 = undefined;
        _v = @intFromEnum(self.pet_1);
        self._m_pet_1_i = _v;
        return _v;
    }
    pub fn pet1IToS(self: *EnumToI) ![]u8 {
        if (self._m_pet_1_i_to_s) |_v|
            return _v;
        var _v: []u8 = undefined;
        _v = (try std.fmt.allocPrint(self._allocator(), "{d}", .{ @intFromEnum(self.pet_1) }));
        self._m_pet_1_i_to_s = _v;
        return _v;
    }
    pub fn pet1Mod(self: *EnumToI) !i32 {
        if (self._m_pet_1_mod) |_v|
            return _v;
        var _v: i32 = undefined;
        _v = @intFromEnum(self.pet_1) + 32768;
        self._m_pet_1_mod = _v;
        return _v;
    }
    pub fn pet2EqInt(self: *EnumToI) !bool {
        if (self._m_pet_2_eq_int) |_v|
            return _v;
        var _v: bool = undefined;
        _v = @intFromEnum(self.pet_2) == 5;
        self._m_pet_2_eq_int = _v;
        return _v;
    }
    _m_one_lt_two: ?bool = null,
    _m_pet_1_eq_int: ?bool = null,
    _m_pet_1_i: ?i32 = null,
    _m_pet_1_i_to_s: ?[]u8 = null,
    _m_pet_1_mod: ?i32 = null,
    _m_pet_2_eq_int: ?bool = null,
    pet_1: Animal = undefined,
    pet_2: Animal = undefined,
    _root: ?*EnumToI,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
