// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const NestedTypes2 = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*NestedTypes2) !*NestedTypes2 {
        const self = try _arena.allocator().create(NestedTypes2);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const NestedTypes2) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *NestedTypes2) !void {
        self.one = try SubtypeA.create(self._arena, self._io, self, self._root);
        self.two = try SubtypeB.create(self._arena, self._io, self, self._root);
    }
    pub const SubtypeA = struct {
        pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*NestedTypes2, _root: ?*NestedTypes2) !*SubtypeA {
            const self = try _arena.allocator().create(SubtypeA);
            self.* = .{
                ._arena = _arena,
                ._io = _io,
                ._parent = _parent,
                ._root = _root,
            };
            try self._read();
            return self;
        }
        fn _allocator(self: *const SubtypeA) std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *SubtypeA) !void {
            self.typed_at_root = try SubtypeB.create(self._arena, self._io, self, self._root);
            self.typed_here1 = try SubtypeC.create(self._arena, self._io, self, self._root);
            self.typed_here2 = try SubtypeCc.create(self._arena, self._io, self, self._root);
        }
        pub const SubtypeC = struct {
            pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*NestedTypes2.SubtypeA, _root: ?*NestedTypes2) !*SubtypeC {
                const self = try _arena.allocator().create(SubtypeC);
                self.* = .{
                    ._arena = _arena,
                    ._io = _io,
                    ._parent = _parent,
                    ._root = _root,
                };
                try self._read();
                return self;
            }
            fn _allocator(self: *const SubtypeC) std.mem.Allocator {
                return self._arena.allocator();
            }
            fn _read(self: *SubtypeC) !void {
                self.value_c = try self._io.readS1();
                self.typed_here = try SubtypeD.create(self._arena, self._io, self, self._root);
                self.typed_parent = try SubtypeCc.create(self._arena, self._io, self, self._root);
                self.typed_root = try SubtypeB.create(self._arena, self._io, self, self._root);
            }
            pub const SubtypeD = struct {
                pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*NestedTypes2.SubtypeA.SubtypeC, _root: ?*NestedTypes2) !*SubtypeD {
                    const self = try _arena.allocator().create(SubtypeD);
                    self.* = .{
                        ._arena = _arena,
                        ._io = _io,
                        ._parent = _parent,
                        ._root = _root,
                    };
                    try self._read();
                    return self;
                }
                fn _allocator(self: *const SubtypeD) std.mem.Allocator {
                    return self._arena.allocator();
                }
                fn _read(self: *SubtypeD) !void {
                    self.value_d = try self._io.readS1();
                }
                value_d: i8 = undefined,
                _root: ?*NestedTypes2,
                _parent: ?*NestedTypes2.SubtypeA.SubtypeC,
                _arena: *std.heap.ArenaAllocator,
                _io: *kaitai_struct.KaitaiStream,
            };
            value_c: i8 = undefined,
            typed_here: *SubtypeD = undefined,
            typed_parent: *SubtypeCc = undefined,
            typed_root: *SubtypeB = undefined,
            _root: ?*NestedTypes2,
            _parent: ?*NestedTypes2.SubtypeA,
            _arena: *std.heap.ArenaAllocator,
            _io: *kaitai_struct.KaitaiStream,
        };
        pub const SubtypeCc = struct {
            pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*NestedTypes2) !*SubtypeCc {
                const self = try _arena.allocator().create(SubtypeCc);
                self.* = .{
                    ._arena = _arena,
                    ._io = _io,
                    ._parent = _parent,
                    ._root = _root,
                };
                try self._read();
                return self;
            }
            fn _allocator(self: *const SubtypeCc) std.mem.Allocator {
                return self._arena.allocator();
            }
            fn _read(self: *SubtypeCc) !void {
                self.value_cc = try self._io.readS1();
            }
            value_cc: i8 = undefined,
            _root: ?*NestedTypes2,
            _parent: ?*anyopaque,
            _arena: *std.heap.ArenaAllocator,
            _io: *kaitai_struct.KaitaiStream,
        };
        typed_at_root: *SubtypeB = undefined,
        typed_here1: *SubtypeC = undefined,
        typed_here2: *SubtypeCc = undefined,
        _root: ?*NestedTypes2,
        _parent: ?*NestedTypes2,
        _arena: *std.heap.ArenaAllocator,
        _io: *kaitai_struct.KaitaiStream,
    };
    pub const SubtypeB = struct {
        pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*NestedTypes2) !*SubtypeB {
            const self = try _arena.allocator().create(SubtypeB);
            self.* = .{
                ._arena = _arena,
                ._io = _io,
                ._parent = _parent,
                ._root = _root,
            };
            try self._read();
            return self;
        }
        fn _allocator(self: *const SubtypeB) std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *SubtypeB) !void {
            self.value_b = try self._io.readS1();
        }
        value_b: i8 = undefined,
        _root: ?*NestedTypes2,
        _parent: ?*anyopaque,
        _arena: *std.heap.ArenaAllocator,
        _io: *kaitai_struct.KaitaiStream,
    };
    one: *SubtypeA = undefined,
    two: *SubtypeB = undefined,
    _root: ?*NestedTypes2,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
