// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const MultipleUse = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*MultipleUse) !*MultipleUse {
        const self = try _arena.allocator().create(MultipleUse);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const MultipleUse) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *MultipleUse) !void {
        self.t1 = try Type1.create(self._arena, self._io, self, self._root);
        self.t2 = try Type2.create(self._arena, self._io, self, self._root);
    }
    pub const Multi = struct {
        pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*MultipleUse) !*Multi {
            const self = try _arena.allocator().create(Multi);
            self.* = .{
                ._arena = _arena,
                ._io = _io,
                ._parent = _parent,
                ._root = _root,
            };
            try self._read();
            return self;
        }
        fn _allocator(self: *const Multi) std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *Multi) !void {
            self.value = try self._io.readS4le();
        }
        value: i32 = undefined,
        _root: ?*MultipleUse,
        _parent: ?*anyopaque,
        _arena: *std.heap.ArenaAllocator,
        _io: *kaitai_struct.KaitaiStream,
    };
    pub const Type1 = struct {
        pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*MultipleUse, _root: ?*MultipleUse) !*Type1 {
            const self = try _arena.allocator().create(Type1);
            self.* = .{
                ._arena = _arena,
                ._io = _io,
                ._parent = _parent,
                ._root = _root,
            };
            try self._read();
            return self;
        }
        fn _allocator(self: *const Type1) std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *Type1) !void {
            self.first_use = try Multi.create(self._arena, self._io, self, self._root);
        }
        first_use: *Multi = undefined,
        _root: ?*MultipleUse,
        _parent: ?*MultipleUse,
        _arena: *std.heap.ArenaAllocator,
        _io: *kaitai_struct.KaitaiStream,
    };
    pub const Type2 = struct {
        pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*MultipleUse, _root: ?*MultipleUse) !*Type2 {
            const self = try _arena.allocator().create(Type2);
            self.* = .{
                ._arena = _arena,
                ._io = _io,
                ._parent = _parent,
                ._root = _root,
            };
            try self._read();
            return self;
        }
        fn _allocator(self: *const Type2) std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *Type2) !void {
            _ = self;
        }
        pub fn secondUse(self: *Type2) !*Multi {
            if (self._m_second_use) |_v|
                return _v;
            var _v: *Multi = undefined;
            const _pos = self._io.pos();
            try self._io.seek(0);
            _v = try Multi.create(self._arena, self._io, self, self._root);
            try self._io.seek(_pos);
            self._m_second_use = _v;
            return _v;
        }
        _m_second_use: ?*Multi = null,
        _root: ?*MultipleUse,
        _parent: ?*MultipleUse,
        _arena: *std.heap.ArenaAllocator,
        _io: *kaitai_struct.KaitaiStream,
    };
    t1: *Type1 = undefined,
    t2: *Type2 = undefined,
    _root: ?*MultipleUse,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
