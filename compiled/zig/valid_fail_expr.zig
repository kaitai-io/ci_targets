// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const ValidFailExpr = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*ValidFailExpr) !*ValidFailExpr {
        const self = try _arena.allocator().create(ValidFailExpr);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const ValidFailExpr) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *ValidFailExpr) !void {
        self.foo = try self._io.readU1();
        {
            const _it = self.foo;
            if (!(_it == 1)) {
                return error.ValidationExprError;
            }
        }
        self.bar = try self._io.readS2le();
        {
            const _it = self.bar;
            if (!( ((_it < -190) or (_it > -190)) )) {
                return error.ValidationExprError;
            }
        }
    }
    foo: u8 = undefined,
    bar: i16 = undefined,
    _root: ?*ValidFailExpr,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
