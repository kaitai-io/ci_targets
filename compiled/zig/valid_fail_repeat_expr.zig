// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const ValidFailRepeatExpr = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*ValidFailRepeatExpr) !*ValidFailRepeatExpr {
        const self = try _arena.allocator().create(ValidFailRepeatExpr);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const ValidFailRepeatExpr) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *ValidFailRepeatExpr) !void {
        self.foo = try self._allocator().create(std.ArrayList([]u8));
        self.foo.* = .empty;
        {
            var i: usize = 0;
            while (!try self._io.isEof()) : (i += 1) {
                try self.foo.append(self._allocator(), try self._io.readBytes(self._allocator(), 4));
                {
                    const _it = self.foo.items[i];
                    if (!(!std.mem.eql(u8, _it, &[_]u8{ 0, 18, 52, 86 }))) {
                        return error.ValidationExprError;
                    }
                }
            }
        }
    }
    foo: *std.ArrayList([]u8) = undefined,
    _root: ?*ValidFailRepeatExpr,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
