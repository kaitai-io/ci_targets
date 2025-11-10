// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const EnumFancy = struct {
    pub const Animal = enum(i32) {
        dog = 4,
        cat = 7,
        chicken = 12,
        _,
    };
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*EnumFancy) !*EnumFancy {
        const self = try _arena.allocator().create(EnumFancy);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const EnumFancy) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *EnumFancy) !void {
        self.pet_1 = @as(EnumFancy.Animal, @enumFromInt(try self._io.readU4le()));
        self.pet_2 = @as(EnumFancy.Animal, @enumFromInt(try self._io.readU4le()));
    }
    pet_1: Animal = undefined,
    pet_2: Animal = undefined,
    _root: ?*EnumFancy,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
