// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const ValidFailRangeStr = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*ValidFailRangeStr) !*ValidFailRangeStr {
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
    fn _allocator(self: *const ValidFailRangeStr) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *ValidFailRangeStr) !void {
        self.foo = (try _imp_kaitai_struct.KaitaiStream.bytesToStr(self._allocator(), try self._io.readBytes(self._allocator(), 2), "ASCII"));
        if (!(_imp_std.mem.order(u8, self.foo, "P").compare(.gte))) {
            return error.ValidationLessThanError;
        }
        if (!(_imp_std.mem.order(u8, self.foo, "P1").compare(.lte))) {
            return error.ValidationGreaterThanError;
        }
    }
    foo: []const u8 = undefined,
    _root: ?*ValidFailRangeStr,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
