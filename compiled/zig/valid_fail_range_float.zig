// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const ValidFailRangeFloat = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*ValidFailRangeFloat) !*ValidFailRangeFloat {
        const self = try _arena.allocator().create(ValidFailRangeFloat);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const ValidFailRangeFloat) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *ValidFailRangeFloat) !void {
        self.foo = try self._io.readF4le();
        if (!(self.foo >= 0.25)) {
            return error.ValidationLessThanError;
        }
        if (!(self.foo <= 0.375)) {
            return error.ValidationGreaterThanError;
        }
    }
    foo: f32 = undefined,
    _root: ?*ValidFailRangeFloat,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
