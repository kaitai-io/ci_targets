// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const ValidFailRangeInt = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*ValidFailRangeInt) !*ValidFailRangeInt {
        const self = try _arena.allocator().create(ValidFailRangeInt);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const ValidFailRangeInt) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *ValidFailRangeInt) !void {
        self.foo = try self._io.readU1();
        if (!(self.foo >= 5)) {
            return error.ValidationLessThanError;
        }
        if (!(self.foo <= 10)) {
            return error.ValidationGreaterThanError;
        }
    }
    foo: u8 = undefined,
    _root: ?*ValidFailRangeInt,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
