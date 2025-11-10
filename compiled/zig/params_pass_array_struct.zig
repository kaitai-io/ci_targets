// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const ParamsPassArrayStruct = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*ParamsPassArrayStruct) !*ParamsPassArrayStruct {
        const self = try _arena.allocator().create(ParamsPassArrayStruct);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const ParamsPassArrayStruct) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *ParamsPassArrayStruct) !void {
        self.one = try Foo.create(self._arena, self._io, self, self._root);
        self.two = try Bar.create(self._arena, self._io, self, self._root);
        self.pass_structs = try StructType.create(self._arena, self._io, self, self._root, (try self.oneTwo()));
    }
    pub const Bar = struct {
        pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*ParamsPassArrayStruct, _root: ?*ParamsPassArrayStruct) !*Bar {
            const self = try _arena.allocator().create(Bar);
            self.* = .{
                ._arena = _arena,
                ._io = _io,
                ._parent = _parent,
                ._root = _root,
            };
            try self._read();
            return self;
        }
        fn _allocator(self: *const Bar) _imp_std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *Bar) !void {
            self.b = try self._io.readU1();
        }
        b: u8 = undefined,
        _root: ?*ParamsPassArrayStruct,
        _parent: ?*ParamsPassArrayStruct,
        _arena: *_imp_std.heap.ArenaAllocator,
        _io: *_imp_kaitai_struct.KaitaiStream,
    };
    pub const Foo = struct {
        pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*ParamsPassArrayStruct, _root: ?*ParamsPassArrayStruct) !*Foo {
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
            self.f = try self._io.readU1();
        }
        f: u8 = undefined,
        _root: ?*ParamsPassArrayStruct,
        _parent: ?*ParamsPassArrayStruct,
        _arena: *_imp_std.heap.ArenaAllocator,
        _io: *_imp_kaitai_struct.KaitaiStream,
    };
    pub const StructType = struct {
        pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*ParamsPassArrayStruct, _root: ?*ParamsPassArrayStruct, structs: *_imp_std.ArrayList(*anyopaque)) !*StructType {
            const self = try _arena.allocator().create(StructType);
            self.* = .{
                ._arena = _arena,
                ._io = _io,
                ._parent = _parent,
                ._root = _root,
            };
            self.structs = structs;
            try self._read();
            return self;
        }
        fn _allocator(self: *const StructType) _imp_std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *StructType) !void {
            _ = self;
        }
        structs: *_imp_std.ArrayList(*anyopaque) = undefined,
        _root: ?*ParamsPassArrayStruct,
        _parent: ?*ParamsPassArrayStruct,
        _arena: *_imp_std.heap.ArenaAllocator,
        _io: *_imp_kaitai_struct.KaitaiStream,
    };
    pub fn oneTwo(self: *ParamsPassArrayStruct) !*_imp_std.ArrayList(*anyopaque) {
        if (self._m_one_two) |_v|
            return _v;
        var _v: *_imp_std.ArrayList(*anyopaque) = undefined;
        _v = _imp_std.ArrayList(*anyopaque){ .items = @constCast(@as([]const *anyopaque, &.{ self.one, self.two })), .capacity = 2 };
        self._m_one_two = _v;
        return _v;
    }
    _m_one_two: ?*_imp_std.ArrayList(*anyopaque) = null,
    one: *Foo = undefined,
    two: *Bar = undefined,
    pass_structs: *StructType = undefined,
    _root: ?*ParamsPassArrayStruct,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
