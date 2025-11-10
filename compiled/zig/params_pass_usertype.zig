// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const ParamsPassUsertype = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*ParamsPassUsertype) !*ParamsPassUsertype {
        const self = try _arena.allocator().create(ParamsPassUsertype);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const ParamsPassUsertype) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *ParamsPassUsertype) !void {
        self.first = try Block.create(self._arena, self._io, self, self._root);
        self.one = try ParamType.create(self._arena, self._io, self, self._root, self.first);
    }
    pub const Block = struct {
        pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*ParamsPassUsertype, _root: ?*ParamsPassUsertype) !*Block {
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
        _root: ?*ParamsPassUsertype,
        _parent: ?*ParamsPassUsertype,
        _arena: *_imp_std.heap.ArenaAllocator,
        _io: *_imp_kaitai_struct.KaitaiStream,
    };
    pub const ParamType = struct {
        pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*ParamsPassUsertype, _root: ?*ParamsPassUsertype, foo: *Block) !*ParamType {
            const self = try _arena.allocator().create(ParamType);
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
        fn _allocator(self: *const ParamType) _imp_std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *ParamType) !void {
            self.buf = try self._io.readBytes(self._allocator(), self.foo.foo);
        }
        buf: []const u8 = undefined,
        foo: *Block = undefined,
        _root: ?*ParamsPassUsertype,
        _parent: ?*ParamsPassUsertype,
        _arena: *_imp_std.heap.ArenaAllocator,
        _io: *_imp_kaitai_struct.KaitaiStream,
    };
    first: *Block = undefined,
    one: *ParamType = undefined,
    _root: ?*ParamsPassUsertype,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
