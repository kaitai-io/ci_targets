// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const Enum0 = struct {
    pub const Animal = enum(i32) {
        dog = 4,
        cat = 7,
        chicken = 12,
        _,
    };
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*Enum0) !*Enum0 {
        const self = try _arena.allocator().create(Enum0);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const Enum0) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *Enum0) !void {
        self.pet_1 = @as(Enum0.Animal, @enumFromInt(try self._io.readU4le()));
        self.pet_2 = @as(Enum0.Animal, @enumFromInt(try self._io.readU4le()));
    }
    pet_1: Animal = undefined,
    pet_2: Animal = undefined,
    _root: ?*Enum0,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
