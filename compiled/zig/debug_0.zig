// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const Debug0 = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*Debug0) !*Debug0 {
        const self = try _arena.allocator().create(Debug0);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        return self;
    }
    fn _allocator(self: *const Debug0) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    pub fn _read(self: *Debug0) !void {
        self.one = try self._io.readU1();
        self.array_of_ints = try self._allocator().create(_imp_std.ArrayList(u8));
        self.array_of_ints.* = .empty;
        for (0..3) |i| {
            {
                const _maybe_unused = i;
                _ = _maybe_unused;
            }
            try self.array_of_ints.append(self._allocator(), try self._io.readU1());
        }
        self._unnamed2 = try self._io.readU1();
    }
    one: u8 = undefined,
    array_of_ints: *_imp_std.ArrayList(u8) = undefined,
    _unnamed2: u8 = undefined,
    _root: ?*Debug0,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
