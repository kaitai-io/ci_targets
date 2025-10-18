// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const NavParentFalse = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*NavParentFalse) !*NavParentFalse {
        const self = try _arena.allocator().create(NavParentFalse);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const NavParentFalse) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *NavParentFalse) !void {
        self.child_size = try self._io.readU1();
        self.element_a = try ParentA.create(self._arena, self._io, self, self._root);
        self.element_b = try ParentB.create(self._arena, self._io, self, self._root);
    }
    pub const Child = struct {
        pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*NavParentFalse.ParentA, _root: ?*NavParentFalse) !*Child {
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
        fn _allocator(self: *const Child) std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *Child) !void {
            self.code = try self._io.readU1();
            if (self.code == 73) {
                self.more = try self._io.readBytes(self._allocator(), self._parent.?._parent.?.child_size);
            }
        }
        code: u8 = undefined,
        more: ?[]u8 = null,
        _root: ?*NavParentFalse,
        _parent: ?*NavParentFalse.ParentA,
        _arena: *std.heap.ArenaAllocator,
        _io: *kaitai_struct.KaitaiStream,
    };
    pub const ParentA = struct {
        pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*NavParentFalse, _root: ?*NavParentFalse) !*ParentA {
            const self = try _arena.allocator().create(ParentA);
            self.* = .{
                ._arena = _arena,
                ._io = _io,
                ._parent = _parent,
                ._root = _root,
            };
            try self._read();
            return self;
        }
        fn _allocator(self: *const ParentA) std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *ParentA) !void {
            self.foo = try Child.create(self._arena, self._io, self, self._root);
            self.bar = try ParentB.create(self._arena, self._io, self, self._root);
        }
        foo: *Child = undefined,
        bar: *ParentB = undefined,
        _root: ?*NavParentFalse,
        _parent: ?*NavParentFalse,
        _arena: *std.heap.ArenaAllocator,
        _io: *kaitai_struct.KaitaiStream,
    };
    pub const ParentB = struct {
        pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*NavParentFalse) !*ParentB {
            const self = try _arena.allocator().create(ParentB);
            self.* = .{
                ._arena = _arena,
                ._io = _io,
                ._parent = _parent,
                ._root = _root,
            };
            try self._read();
            return self;
        }
        fn _allocator(self: *const ParentB) std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *ParentB) !void {
            self.foo = try Child.create(self._arena, self._io, null, self._root);
        }
        foo: *Child = undefined,
        _root: ?*NavParentFalse,
        _parent: ?*anyopaque,
        _arena: *std.heap.ArenaAllocator,
        _io: *kaitai_struct.KaitaiStream,
    };
    child_size: u8 = undefined,
    element_a: *ParentA = undefined,
    element_b: *ParentB = undefined,
    _root: ?*NavParentFalse,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
