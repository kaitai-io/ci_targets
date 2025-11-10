// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const CombineEnum = struct {
    pub const Animal = enum(i32) {
        pig = 7,
        horse = 12,
        _,
    };
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*CombineEnum) !*CombineEnum {
        const self = try _arena.allocator().create(CombineEnum);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const CombineEnum) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *CombineEnum) !void {
        self.enum_u4 = @as(CombineEnum.Animal, @enumFromInt(try self._io.readU4le()));
        self.enum_u2 = @as(CombineEnum.Animal, @enumFromInt(try self._io.readU2le()));
    }
    pub fn enumU4U2(self: *CombineEnum) !Animal {
        if (self._m_enum_u4_u2) |_v|
            return _v;
        var _v: Animal = undefined;
        _v = (if (false) self.enum_u4 else self.enum_u2);
        self._m_enum_u4_u2 = _v;
        return _v;
    }
    _m_enum_u4_u2: ?Animal = null,
    enum_u4: Animal = undefined,
    enum_u2: Animal = undefined,
    _root: ?*CombineEnum,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
