// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const DebugArrayUserEofException = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*DebugArrayUserEofException) !*DebugArrayUserEofException {
        const self = try _arena.allocator().create(DebugArrayUserEofException);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        return self;
    }
    fn _allocator(self: *const DebugArrayUserEofException) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    pub fn _read(self: *DebugArrayUserEofException) !void {
        self.one_cat = try Cat.create(self._arena, self._io, self, self._root);
        self.one_cat._read();
        self.array_of_cats = try self._allocator().create(_imp_std.ArrayList(*Cat));
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
        pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*DebugArrayUserEofException, _root: ?*DebugArrayUserEofException) !*Cat {
            const self = try _arena.allocator().create(Cat);
            self.* = .{
                ._arena = _arena,
                ._io = _io,
                ._parent = _parent,
                ._root = _root,
            };
            return self;
        }
        fn _allocator(self: *const Cat) _imp_std.mem.Allocator {
            return self._arena.allocator();
        }
        pub fn _read(self: *Cat) !void {
            self.meow = try self._io.readU1();
            self.chirp = try self._io.readU1();
        }
        meow: u8 = undefined,
        chirp: u8 = undefined,
        _root: ?*DebugArrayUserEofException,
        _parent: ?*DebugArrayUserEofException,
        _arena: *_imp_std.heap.ArenaAllocator,
        _io: *_imp_kaitai_struct.KaitaiStream,
    };
    one_cat: *Cat = undefined,
    array_of_cats: *_imp_std.ArrayList(*Cat) = undefined,
    _root: ?*DebugArrayUserEofException,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
