// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const ValidFailRangeBytes = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*ValidFailRangeBytes) !*ValidFailRangeBytes {
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
    fn _allocator(self: *const ValidFailRangeBytes) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *ValidFailRangeBytes) !void {
        self.foo = try self._io.readBytes(self._allocator(), 2);
        if (!(_imp_std.mem.order(u8, self.foo, &[_]u8{ 80 }).compare(.gte))) {
            return error.ValidationLessThanError;
        }
        if (!(_imp_std.mem.order(u8, self.foo, &[_]u8{ 80, 49 }).compare(.lte))) {
            return error.ValidationGreaterThanError;
        }
    }
    foo: []const u8 = undefined,
    _root: ?*ValidFailRangeBytes,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
