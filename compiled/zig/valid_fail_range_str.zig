// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const ValidFailRangeStr = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*ValidFailRangeStr) !*ValidFailRangeStr {
        const self = try _arena.allocator().create(ValidFailRangeStr);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const ValidFailRangeStr) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *ValidFailRangeStr) !void {
        self.foo = kaitai_struct.KaitaiStream.bytesToStr(try self._io.readBytes(self._allocator(), 2), "ASCII");
        if (!(std.mem.order(u8, self.foo, "P").compare(.gte))) {
            return error.ValidationLessThanError;
        }
        if (!(std.mem.order(u8, self.foo, "P1").compare(.lte))) {
            return error.ValidationGreaterThanError;
        }
    }
    foo: []u8 = undefined,
    _root: ?*ValidFailRangeStr,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
