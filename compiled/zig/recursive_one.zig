// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const RecursiveOne = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*RecursiveOne) !*RecursiveOne {
        const self = try _arena.allocator().create(RecursiveOne);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const RecursiveOne) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *RecursiveOne) !void {
        self.one = try self._io.readU1();
        switch (self.one & 3) {
            0 => {
                self.next = try RecursiveOne.create(self._arena, self._io, self, self._root);
            },
            1 => {
                self.next = try RecursiveOne.create(self._arena, self._io, self, self._root);
            },
            2 => {
                self.next = try RecursiveOne.create(self._arena, self._io, self, self._root);
            },
            3 => {
                self.next = try Fini.create(self._arena, self._io, self, self._root);
            },
            else => {
            },
        }
    }
    pub const Fini = struct {
        pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*RecursiveOne, _root: ?*RecursiveOne) !*Fini {
            const self = try _arena.allocator().create(Fini);
            self.* = .{
                ._arena = _arena,
                ._io = _io,
                ._parent = _parent,
                ._root = _root,
            };
            try self._read();
            return self;
        }
        fn _allocator(self: *const Fini) _imp_std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *Fini) !void {
            self.finisher = try self._io.readU2le();
        }
        finisher: u16 = undefined,
        _root: ?*RecursiveOne,
        _parent: ?*RecursiveOne,
        _arena: *_imp_std.heap.ArenaAllocator,
        _io: *_imp_kaitai_struct.KaitaiStream,
    };
    one: u8 = undefined,
    next: ?*anyopaque = null,
    _root: ?*RecursiveOne,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
