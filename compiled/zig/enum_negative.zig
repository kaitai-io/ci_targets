// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const EnumNegative = struct {
    pub const Constants = enum(i32) {
        negative_one = -1,
        positive_one = 1,
        _,
    };
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*EnumNegative) !*EnumNegative {
        const self = try _arena.allocator().create(EnumNegative);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const EnumNegative) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *EnumNegative) !void {
        self.f1 = @as(EnumNegative.Constants, @enumFromInt(try self._io.readS1()));
        self.f2 = @as(EnumNegative.Constants, @enumFromInt(try self._io.readS1()));
    }
    f1: Constants = undefined,
    f2: Constants = undefined,
    _root: ?*EnumNegative,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
