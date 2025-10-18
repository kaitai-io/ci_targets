// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const ExprEnum = struct {
    pub const Animal = enum(i32) {
        dog = 4,
        cat = 7,
        chicken = 12,
        boom = 102,
        _,
    };
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*ExprEnum) !*ExprEnum {
        const self = try _arena.allocator().create(ExprEnum);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const ExprEnum) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *ExprEnum) !void {
        self.one = try self._io.readU1();
    }
    pub fn constDog(self: *ExprEnum) !Animal {
        if (self._m_const_dog) |_v|
            return _v;
        var _v: Animal = undefined;
        _v = @as(ExprEnum.Animal, @enumFromInt(4));
        self._m_const_dog = _v;
        return _v;
    }
    pub fn derivedBoom(self: *ExprEnum) !Animal {
        if (self._m_derived_boom) |_v|
            return _v;
        var _v: Animal = undefined;
        _v = @as(ExprEnum.Animal, @enumFromInt(self.one));
        self._m_derived_boom = _v;
        return _v;
    }
    pub fn derivedDog(self: *ExprEnum) !Animal {
        if (self._m_derived_dog) |_v|
            return _v;
        var _v: Animal = undefined;
        _v = @as(ExprEnum.Animal, @enumFromInt(self.one - 98));
        self._m_derived_dog = _v;
        return _v;
    }
    _m_const_dog: ?Animal = null,
    _m_derived_boom: ?Animal = null,
    _m_derived_dog: ?Animal = null,
    one: u8 = undefined,
    _root: ?*ExprEnum,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
