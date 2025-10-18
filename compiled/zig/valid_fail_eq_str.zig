// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const ValidFailEqStr = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*ValidFailEqStr) !*ValidFailEqStr {
        const self = try _arena.allocator().create(ValidFailEqStr);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const ValidFailEqStr) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *ValidFailEqStr) !void {
        self.foo = kaitai_struct.KaitaiStream.bytesToStr(try self._io.readBytes(self._allocator(), 4), "ASCII");
        if (!(std.mem.eql(u8, self.foo, "BACK"))) {
            return error.ValidationNotEqualError;
        }
    }
    foo: []u8 = undefined,
    _root: ?*ValidFailEqStr,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
