// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const DebugArrayUser = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*DebugArrayUser) !*DebugArrayUser {
        const self = try _arena.allocator().create(DebugArrayUser);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        return self;
    }
    fn _allocator(self: *const DebugArrayUser) std.mem.Allocator {
        return self._arena.allocator();
    }
    pub fn _read(self: *DebugArrayUser) !void {
        self.one_cat = try Cat.create(self._arena, self._io, self, self._root);
        self.one_cat._read();
        self.array_of_cats = try self._allocator().create(std.ArrayList(*Cat));
        self.array_of_cats.* = .empty;
        for (0..3) |i| {
            {
                const _maybe_unused = i;
                _ = _maybe_unused;
            }
            const _t_array_of_cats = try Cat.create(self._arena, self._io, self, self._root);
            try {
                _t_array_of_cats._read();
            } finally {
                try self.array_of_cats.append(self._allocator(), _t_array_of_cats);
            }
        }
    }
    pub const Cat = struct {
        pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*DebugArrayUser, _root: ?*DebugArrayUser) !*Cat {
            const self = try _arena.allocator().create(Cat);
            self.* = .{
                ._arena = _arena,
                ._io = _io,
                ._parent = _parent,
                ._root = _root,
            };
            return self;
        }
        fn _allocator(self: *const Cat) std.mem.Allocator {
            return self._arena.allocator();
        }
        pub fn _read(self: *Cat) !void {
            self.meow = try self._io.readU1();
        }
        meow: u8 = undefined,
        _root: ?*DebugArrayUser,
        _parent: ?*DebugArrayUser,
        _arena: *std.heap.ArenaAllocator,
        _io: *kaitai_struct.KaitaiStream,
    };
    one_cat: *Cat = undefined,
    array_of_cats: *std.ArrayList(*Cat) = undefined,
    _root: ?*DebugArrayUser,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
