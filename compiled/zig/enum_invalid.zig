// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const EnumInvalid = struct {
    pub const Animal = enum(i32) {
        dog = 102,
        cat = 124,
        _,
    };
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*EnumInvalid) !*EnumInvalid {
        const self = try _arena.allocator().create(EnumInvalid);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const EnumInvalid) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *EnumInvalid) !void {
        self.pet_1 = @as(EnumInvalid.Animal, @enumFromInt(try self._io.readU1()));
        self.pet_2 = @as(EnumInvalid.Animal, @enumFromInt(try self._io.readU1()));
    }
    pet_1: Animal = undefined,
    pet_2: Animal = undefined,
    _root: ?*EnumInvalid,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
