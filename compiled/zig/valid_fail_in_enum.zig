// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const ValidFailInEnum = struct {
    pub const Animal = enum(i32) {
        dog = 4,
        chicken = 12,
        _,
    };
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*ValidFailInEnum) !*ValidFailInEnum {
        const self = try _arena.allocator().create(ValidFailInEnum);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const ValidFailInEnum) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *ValidFailInEnum) !void {
        self.foo = @as(ValidFailInEnum.Animal, @enumFromInt(try self._io.readU4le()));
        if (self.foo == null) {
            return error.ValidationNotInEnumError;
        }
    }
    foo: Animal = undefined,
    _root: ?*ValidFailInEnum,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
