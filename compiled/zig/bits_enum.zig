// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const BitsEnum = struct {
    pub const Animal = enum(i32) {
        cat = 0,
        dog = 1,
        horse = 4,
        platypus = 5,
        _,
    };
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*BitsEnum) !*BitsEnum {
        const self = try _arena.allocator().create(BitsEnum);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const BitsEnum) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *BitsEnum) !void {
        self.one = @as(BitsEnum.Animal, @enumFromInt(try self._io.readBitsIntBe(4)));
        self.two = @as(BitsEnum.Animal, @enumFromInt(try self._io.readBitsIntBe(8)));
        self.three = @as(BitsEnum.Animal, @enumFromInt(try self._io.readBitsIntBe(1)));
    }
    one: Animal = undefined,
    two: Animal = undefined,
    three: Animal = undefined,
    _root: ?*BitsEnum,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
