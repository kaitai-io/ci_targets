// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const EnumToIInvalid = struct {
    pub const Animal = enum(i32) {
        dog = 102,
        cat = 124,
        _,
    };
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*EnumToIInvalid) !*EnumToIInvalid {
        const self = try _arena.allocator().create(EnumToIInvalid);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const EnumToIInvalid) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *EnumToIInvalid) !void {
        self.pet_1 = @as(EnumToIInvalid.Animal, @enumFromInt(try self._io.readU1()));
        self.pet_2 = @as(EnumToIInvalid.Animal, @enumFromInt(try self._io.readU1()));
    }
    pub fn oneLtTwo(self: *EnumToIInvalid) !bool {
        if (self._m_one_lt_two) |_v|
            return _v;
        var _v: bool = undefined;
        _v = @intFromEnum(self.pet_1) < @intFromEnum(self.pet_2);
        self._m_one_lt_two = _v;
        return _v;
    }
    pub fn pet2EqIntF(self: *EnumToIInvalid) !bool {
        if (self._m_pet_2_eq_int_f) |_v|
            return _v;
        var _v: bool = undefined;
        _v = @intFromEnum(self.pet_2) == 110;
        self._m_pet_2_eq_int_f = _v;
        return _v;
    }
    pub fn pet2EqIntT(self: *EnumToIInvalid) !bool {
        if (self._m_pet_2_eq_int_t) |_v|
            return _v;
        var _v: bool = undefined;
        _v = @intFromEnum(self.pet_2) == 111;
        self._m_pet_2_eq_int_t = _v;
        return _v;
    }
    pub fn pet2I(self: *EnumToIInvalid) !i32 {
        if (self._m_pet_2_i) |_v|
            return _v;
        var _v: i32 = undefined;
        _v = @intFromEnum(self.pet_2);
        self._m_pet_2_i = _v;
        return _v;
    }
    pub fn pet2IToS(self: *EnumToIInvalid) ![]const u8 {
        if (self._m_pet_2_i_to_s) |_v|
            return _v;
        var _v: []const u8 = undefined;
        _v = (try _imp_std.fmt.allocPrint(self._allocator(), "{d}", .{ @intFromEnum(self.pet_2) }));
        self._m_pet_2_i_to_s = _v;
        return _v;
    }
    pub fn pet2Mod(self: *EnumToIInvalid) !i32 {
        if (self._m_pet_2_mod) |_v|
            return _v;
        var _v: i32 = undefined;
        _v = @intFromEnum(self.pet_2) + 32768;
        self._m_pet_2_mod = _v;
        return _v;
    }
    _m_one_lt_two: ?bool = null,
    _m_pet_2_eq_int_f: ?bool = null,
    _m_pet_2_eq_int_t: ?bool = null,
    _m_pet_2_i: ?i32 = null,
    _m_pet_2_i_to_s: ?[]const u8 = null,
    _m_pet_2_mod: ?i32 = null,
    pet_1: Animal = undefined,
    pet_2: Animal = undefined,
    _root: ?*EnumToIInvalid,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
