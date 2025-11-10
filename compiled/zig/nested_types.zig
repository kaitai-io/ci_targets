// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const NestedTypes = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*NestedTypes) !*NestedTypes {
        const self = try _arena.allocator().create(NestedTypes);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const NestedTypes) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *NestedTypes) !void {
        self.one = try SubtypeA.create(self._arena, self._io, self, self._root);
        self.two = try SubtypeB.create(self._arena, self._io, self, self._root);
    }
    pub const SubtypeA = struct {
        pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*NestedTypes, _root: ?*NestedTypes) !*SubtypeA {
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
        fn _allocator(self: *const SubtypeA) _imp_std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *SubtypeA) !void {
            self.typed_at_root = try SubtypeB.create(self._arena, self._io, self, self._root);
            self.typed_here = try SubtypeC.create(self._arena, self._io, self, self._root);
        }
        pub const SubtypeC = struct {
            pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*NestedTypes.SubtypeA, _root: ?*NestedTypes) !*SubtypeC {
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
            fn _allocator(self: *const SubtypeC) _imp_std.mem.Allocator {
                return self._arena.allocator();
            }
            fn _read(self: *SubtypeC) !void {
                self.value_c = try self._io.readS1();
            }
            value_c: i8 = undefined,
            _root: ?*NestedTypes,
            _parent: ?*NestedTypes.SubtypeA,
            _arena: *_imp_std.heap.ArenaAllocator,
            _io: *_imp_kaitai_struct.KaitaiStream,
        };
        typed_at_root: *SubtypeB = undefined,
        typed_here: *SubtypeC = undefined,
        _root: ?*NestedTypes,
        _parent: ?*NestedTypes,
        _arena: *_imp_std.heap.ArenaAllocator,
        _io: *_imp_kaitai_struct.KaitaiStream,
    };
    pub const SubtypeB = struct {
        pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*NestedTypes) !*SubtypeB {
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
        fn _allocator(self: *const SubtypeB) _imp_std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *SubtypeB) !void {
            self.value_b = try self._io.readS1();
        }
        value_b: i8 = undefined,
        _root: ?*NestedTypes,
        _parent: ?*anyopaque,
        _arena: *_imp_std.heap.ArenaAllocator,
        _io: *_imp_kaitai_struct.KaitaiStream,
    };
    one: *SubtypeA = undefined,
    two: *SubtypeB = undefined,
    _root: ?*NestedTypes,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
