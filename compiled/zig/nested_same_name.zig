// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const NestedSameName = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*NestedSameName) !*NestedSameName {
        const self = try _arena.allocator().create(NestedSameName);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const NestedSameName) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *NestedSameName) !void {
        self.main_data = try Main.create(self._arena, self._io, self, self._root);
        self.dummy = try DummyObj.create(self._arena, self._io, self, self._root);
    }
    pub const DummyObj = struct {
        pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*NestedSameName, _root: ?*NestedSameName) !*DummyObj {
            const self = try _arena.allocator().create(DummyObj);
            self.* = .{
                ._arena = _arena,
                ._io = _io,
                ._parent = _parent,
                ._root = _root,
            };
            try self._read();
            return self;
        }
        fn _allocator(self: *const DummyObj) _imp_std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *DummyObj) !void {
            _ = self;
        }
        pub const Foo = struct {
            pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*NestedSameName) !*Foo {
                const self = try _arena.allocator().create(Foo);
                self.* = .{
                    ._arena = _arena,
                    ._io = _io,
                    ._parent = _parent,
                    ._root = _root,
                };
                try self._read();
                return self;
            }
            fn _allocator(self: *const Foo) _imp_std.mem.Allocator {
                return self._arena.allocator();
            }
            fn _read(self: *Foo) !void {
                _ = self;
            }
            _root: ?*NestedSameName,
            _parent: ?*anyopaque,
            _arena: *_imp_std.heap.ArenaAllocator,
            _io: *_imp_kaitai_struct.KaitaiStream,
        };
        _root: ?*NestedSameName,
        _parent: ?*NestedSameName,
        _arena: *_imp_std.heap.ArenaAllocator,
        _io: *_imp_kaitai_struct.KaitaiStream,
    };
    pub const Main = struct {
        pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*NestedSameName, _root: ?*NestedSameName) !*Main {
            const self = try _arena.allocator().create(Main);
            self.* = .{
                ._arena = _arena,
                ._io = _io,
                ._parent = _parent,
                ._root = _root,
            };
            try self._read();
            return self;
        }
        fn _allocator(self: *const Main) _imp_std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *Main) !void {
            self.main_size = try self._io.readS4le();
            self.foo = try FooObj.create(self._arena, self._io, self, self._root);
        }
        pub const FooObj = struct {
            pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*NestedSameName.Main, _root: ?*NestedSameName) !*FooObj {
                const self = try _arena.allocator().create(FooObj);
                self.* = .{
                    ._arena = _arena,
                    ._io = _io,
                    ._parent = _parent,
                    ._root = _root,
                };
                try self._read();
                return self;
            }
            fn _allocator(self: *const FooObj) _imp_std.mem.Allocator {
                return self._arena.allocator();
            }
            fn _read(self: *FooObj) !void {
                self.data = try self._io.readBytes(self._allocator(), self._parent.?.main_size * 2);
            }
            data: []const u8 = undefined,
            _root: ?*NestedSameName,
            _parent: ?*NestedSameName.Main,
            _arena: *_imp_std.heap.ArenaAllocator,
            _io: *_imp_kaitai_struct.KaitaiStream,
        };
        main_size: i32 = undefined,
        foo: *FooObj = undefined,
        _root: ?*NestedSameName,
        _parent: ?*NestedSameName,
        _arena: *_imp_std.heap.ArenaAllocator,
        _io: *_imp_kaitai_struct.KaitaiStream,
    };
    main_data: *Main = undefined,
    dummy: *DummyObj = undefined,
    _root: ?*NestedSameName,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
