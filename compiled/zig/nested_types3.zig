// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const NestedTypes3 = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*NestedTypes3) !*NestedTypes3 {
        const self = try _arena.allocator().create(NestedTypes3);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const NestedTypes3) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *NestedTypes3) !void {
        self.a_cc = try SubtypeA.SubtypeCc.create(self._arena, self._io, self, self._root);
        self.a_c_d = try SubtypeA.SubtypeC.SubtypeD.create(self._arena, self._io, self, self._root);
        self.b = try SubtypeB.create(self._arena, self._io, self, self._root);
    }
    pub const SubtypeA = struct {
        pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*NestedTypes3) !*SubtypeA {
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
            _ = self;
        }
        pub const SubtypeC = struct {
            pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*NestedTypes3) !*SubtypeC {
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
                _ = self;
            }
            pub const SubtypeD = struct {
                pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*NestedTypes3) !*SubtypeD {
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
                fn _allocator(self: *const SubtypeD) _imp_std.mem.Allocator {
                    return self._arena.allocator();
                }
                fn _read(self: *SubtypeD) !void {
                    self.value_d = try self._io.readS1();
                }
                value_d: i8 = undefined,
                _root: ?*NestedTypes3,
                _parent: ?*anyopaque,
                _arena: *_imp_std.heap.ArenaAllocator,
                _io: *_imp_kaitai_struct.KaitaiStream,
            };
            _root: ?*NestedTypes3,
            _parent: ?*anyopaque,
            _arena: *_imp_std.heap.ArenaAllocator,
            _io: *_imp_kaitai_struct.KaitaiStream,
        };
        pub const SubtypeCc = struct {
            pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*NestedTypes3) !*SubtypeCc {
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
            fn _allocator(self: *const SubtypeCc) _imp_std.mem.Allocator {
                return self._arena.allocator();
            }
            fn _read(self: *SubtypeCc) !void {
                self.value_cc = try self._io.readS1();
            }
            value_cc: i8 = undefined,
            _root: ?*NestedTypes3,
            _parent: ?*anyopaque,
            _arena: *_imp_std.heap.ArenaAllocator,
            _io: *_imp_kaitai_struct.KaitaiStream,
        };
        _root: ?*NestedTypes3,
        _parent: ?*anyopaque,
        _arena: *_imp_std.heap.ArenaAllocator,
        _io: *_imp_kaitai_struct.KaitaiStream,
    };
    pub const SubtypeB = struct {
        pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*NestedTypes3, _root: ?*NestedTypes3) !*SubtypeB {
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
            self.a_cc = try SubtypeA.SubtypeCc.create(self._arena, self._io, self, self._root);
            self.a_c_d = try SubtypeA.SubtypeC.SubtypeD.create(self._arena, self._io, self, self._root);
        }
        value_b: i8 = undefined,
        a_cc: *SubtypeA.SubtypeCc = undefined,
        a_c_d: *SubtypeA.SubtypeC.SubtypeD = undefined,
        _root: ?*NestedTypes3,
        _parent: ?*NestedTypes3,
        _arena: *_imp_std.heap.ArenaAllocator,
        _io: *_imp_kaitai_struct.KaitaiStream,
    };
    a_cc: *SubtypeA.SubtypeCc = undefined,
    a_c_d: *SubtypeA.SubtypeC.SubtypeD = undefined,
    b: *SubtypeB = undefined,
    _root: ?*NestedTypes3,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
