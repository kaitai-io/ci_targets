// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const ValidFailRangeBytes = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*ValidFailRangeBytes) !*ValidFailRangeBytes {
        const self = try _arena.allocator().create(ValidFailRangeBytes);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const ValidFailRangeBytes) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *ValidFailRangeBytes) !void {
        self.foo = try self._io.readBytes(self._allocator(), 2);
        if (!(std.mem.order(u8, self.foo, &[_]u8{ 80 }).compare(.gte))) {
            return error.ValidationLessThanError;
        }
        if (!(std.mem.order(u8, self.foo, &[_]u8{ 80, 49 }).compare(.lte))) {
            return error.ValidationGreaterThanError;
        }
    }
    foo: []u8 = undefined,
    _root: ?*ValidFailRangeBytes,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
