// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const NavParentFalse2 = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*NavParentFalse2) !*NavParentFalse2 {
        const self = try _arena.allocator().create(NavParentFalse2);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const NavParentFalse2) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *NavParentFalse2) !void {
        self.parentless = try Child.create(self._arena, self._io, null, self._root);
    }
    pub const Child = struct {
        pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*NavParentFalse2) !*Child {
            const self = try _arena.allocator().create(Child);
            self.* = .{
                ._arena = _arena,
                ._io = _io,
                ._parent = _parent,
                ._root = _root,
            };
            try self._read();
            return self;
        }
        fn _allocator(self: *const Child) _imp_std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *Child) !void {
            self.foo = try self._io.readU1();
        }
        foo: u8 = undefined,
        _root: ?*NavParentFalse2,
        _parent: ?*anyopaque,
        _arena: *_imp_std.heap.ArenaAllocator,
        _io: *_imp_kaitai_struct.KaitaiStream,
    };
    parentless: *Child = undefined,
    _root: ?*NavParentFalse2,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
