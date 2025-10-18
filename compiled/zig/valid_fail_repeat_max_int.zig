// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const ValidFailRepeatMaxInt = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*ValidFailRepeatMaxInt) !*ValidFailRepeatMaxInt {
        const self = try _arena.allocator().create(ValidFailRepeatMaxInt);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const ValidFailRepeatMaxInt) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *ValidFailRepeatMaxInt) !void {
        self.foo = try self._allocator().create(std.ArrayList(u8));
        self.foo.* = .empty;
        {
            var i: usize = 0;
            while (!try self._io.isEof()) : (i += 1) {
                try self.foo.append(self._allocator(), try self._io.readU1());
                if (!(self.foo.items[i] <= 254)) {
                    return error.ValidationGreaterThanError;
                }
            }
        }
    }
    foo: *std.ArrayList(u8) = undefined,
    _root: ?*ValidFailRepeatMaxInt,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
