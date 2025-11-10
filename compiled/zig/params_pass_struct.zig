// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const ParamsPassStruct = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*ParamsPassStruct) !*ParamsPassStruct {
        const self = try _arena.allocator().create(ParamsPassStruct);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const ParamsPassStruct) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *ParamsPassStruct) !void {
        self.first = try Block.create(self._arena, self._io, self, self._root);
        self.one = try StructType.create(self._arena, self._io, self, self._root, self.first);
    }
    pub const Block = struct {
        pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*ParamsPassStruct, _root: ?*ParamsPassStruct) !*Block {
            const self = try _arena.allocator().create(Block);
            self.* = .{
                ._arena = _arena,
                ._io = _io,
                ._parent = _parent,
                ._root = _root,
            };
            try self._read();
            return self;
        }
        fn _allocator(self: *const Block) _imp_std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *Block) !void {
            self.foo = try self._io.readU1();
        }
        foo: u8 = undefined,
        _root: ?*ParamsPassStruct,
        _parent: ?*ParamsPassStruct,
        _arena: *_imp_std.heap.ArenaAllocator,
        _io: *_imp_kaitai_struct.KaitaiStream,
    };
    pub const StructType = struct {
        pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*ParamsPassStruct, _root: ?*ParamsPassStruct, foo: *anyopaque) !*StructType {
            const self = try _arena.allocator().create(StructType);
            self.* = .{
                ._arena = _arena,
                ._io = _io,
                ._parent = _parent,
                ._root = _root,
            };
            self.foo = foo;
            try self._read();
            return self;
        }
        fn _allocator(self: *const StructType) _imp_std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *StructType) !void {
            self.bar = try Baz.create(self._arena, self._io, self, self._root, self.foo);
        }
        pub const Baz = struct {
            pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*ParamsPassStruct.StructType, _root: ?*ParamsPassStruct, foo: *anyopaque) !*Baz {
                const self = try _arena.allocator().create(Baz);
                self.* = .{
                    ._arena = _arena,
                    ._io = _io,
                    ._parent = _parent,
                    ._root = _root,
                };
                self.foo = foo;
                try self._read();
                return self;
            }
            fn _allocator(self: *const Baz) _imp_std.mem.Allocator {
                return self._arena.allocator();
            }
            fn _read(self: *Baz) !void {
                self.qux = try self._io.readU1();
            }
            qux: u8 = undefined,
            foo: *anyopaque = undefined,
            _root: ?*ParamsPassStruct,
            _parent: ?*ParamsPassStruct.StructType,
            _arena: *_imp_std.heap.ArenaAllocator,
            _io: *_imp_kaitai_struct.KaitaiStream,
        };
        bar: *Baz = undefined,
        foo: *anyopaque = undefined,
        _root: ?*ParamsPassStruct,
        _parent: ?*ParamsPassStruct,
        _arena: *_imp_std.heap.ArenaAllocator,
        _io: *_imp_kaitai_struct.KaitaiStream,
    };
    first: *Block = undefined,
    one: *StructType = undefined,
    _root: ?*ParamsPassStruct,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
