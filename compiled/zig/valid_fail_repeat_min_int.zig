// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const ValidFailRepeatMinInt = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*ValidFailRepeatMinInt) !*ValidFailRepeatMinInt {
        const self = try _arena.allocator().create(ValidFailRepeatMinInt);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const ValidFailRepeatMinInt) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *ValidFailRepeatMinInt) !void {
        self.foo = try self._allocator().create(_imp_std.ArrayList(i8));
        self.foo.* = .empty;
        {
            var i: usize = 0;
            while (!try self._io.isEof()) : (i += 1) {
                try self.foo.append(self._allocator(), try self._io.readS1());
                if (!(self.foo.items[i] >= 0)) {
                    return error.ValidationLessThanError;
                }
            }
        }
    }
    foo: *_imp_std.ArrayList(i8) = undefined,
    _root: ?*ValidFailRepeatMinInt,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
