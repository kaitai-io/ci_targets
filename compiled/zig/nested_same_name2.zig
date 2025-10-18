// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const NestedSameName2 = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*NestedSameName2) !*NestedSameName2 {
        const self = try _arena.allocator().create(NestedSameName2);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const NestedSameName2) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *NestedSameName2) !void {
        self.version = try self._io.readU4le();
        self.main_data = try Main.create(self._arena, self._io, self, self._root);
        self.dummy = try DummyObj.create(self._arena, self._io, self, self._root);
    }
    pub const DummyObj = struct {
        pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*NestedSameName2, _root: ?*NestedSameName2) !*DummyObj {
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
        fn _allocator(self: *const DummyObj) std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *DummyObj) !void {
            self.dummy_size = try self._io.readS4le();
            self.foo = try FooObj.create(self._arena, self._io, self, self._root);
        }
        pub const FooObj = struct {
            pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*NestedSameName2.DummyObj, _root: ?*NestedSameName2) !*FooObj {
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
            fn _allocator(self: *const FooObj) std.mem.Allocator {
                return self._arena.allocator();
            }
            fn _read(self: *FooObj) !void {
                self.data2 = try self._io.readBytes(self._allocator(), self._parent.?.dummy_size * 2);
            }
            data2: []u8 = undefined,
            _root: ?*NestedSameName2,
            _parent: ?*NestedSameName2.DummyObj,
            _arena: *std.heap.ArenaAllocator,
            _io: *kaitai_struct.KaitaiStream,
        };
        dummy_size: i32 = undefined,
        foo: *FooObj = undefined,
        _root: ?*NestedSameName2,
        _parent: ?*NestedSameName2,
        _arena: *std.heap.ArenaAllocator,
        _io: *kaitai_struct.KaitaiStream,
    };
    pub const Main = struct {
        pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*NestedSameName2, _root: ?*NestedSameName2) !*Main {
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
        fn _allocator(self: *const Main) std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *Main) !void {
            self.main_size = try self._io.readS4le();
            self.foo = try FooObj.create(self._arena, self._io, self, self._root);
        }
        pub const FooObj = struct {
            pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*NestedSameName2.Main, _root: ?*NestedSameName2) !*FooObj {
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
            fn _allocator(self: *const FooObj) std.mem.Allocator {
                return self._arena.allocator();
            }
            fn _read(self: *FooObj) !void {
                self.data1 = try self._io.readBytes(self._allocator(), self._parent.?.main_size * 2);
            }
            data1: []u8 = undefined,
            _root: ?*NestedSameName2,
            _parent: ?*NestedSameName2.Main,
            _arena: *std.heap.ArenaAllocator,
            _io: *kaitai_struct.KaitaiStream,
        };
        main_size: i32 = undefined,
        foo: *FooObj = undefined,
        _root: ?*NestedSameName2,
        _parent: ?*NestedSameName2,
        _arena: *std.heap.ArenaAllocator,
        _io: *kaitai_struct.KaitaiStream,
    };
    version: u32 = undefined,
    main_data: *Main = undefined,
    dummy: *DummyObj = undefined,
    _root: ?*NestedSameName2,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
