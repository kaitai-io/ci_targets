// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");
const enum_deep = @import("enum_deep.zig");
const enum_0 = @import("enum_0.zig");

pub const EnumImportSeq = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*EnumImportSeq) !*EnumImportSeq {
        const self = try _arena.allocator().create(EnumImportSeq);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const EnumImportSeq) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *EnumImportSeq) !void {
        self.pet_1 = @as(enum_0.Enum0.Animal, @enumFromInt(try self._io.readU4le()));
        self.pet_2 = @as(enum_deep.EnumDeep.Container1.Container2.Animal, @enumFromInt(try self._io.readU4le()));
    }
    pet_1: enum_0.Enum0.Animal = undefined,
    pet_2: enum_deep.EnumDeep.Container1.Container2.Animal = undefined,
    _root: ?*EnumImportSeq,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
