// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const ParamsPassIo = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*ParamsPassIo) !*ParamsPassIo {
        const self = try _arena.allocator().create(ParamsPassIo);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const ParamsPassIo) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *ParamsPassIo) !void {
        self._raw_first = try self._io.readBytes(self._allocator(), 1);
        const _io__raw_first = try self._allocator().create(kaitai_struct.KaitaiStream);
        _io__raw_first.* = kaitai_struct.KaitaiStream.fromBytes(self._raw_first);
        self.first = try Block.create(self._arena, _io__raw_first, self, self._root);
        self.one = try ParamType.create(self._arena, self._io, self, self._root, (if (self.first.foo == 255) self.first._io else self._root.?._io));
    }
    pub const Block = struct {
        pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*ParamsPassIo, _root: ?*ParamsPassIo) !*Block {
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
        fn _allocator(self: *const Block) std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *Block) !void {
            self.foo = try self._io.readU1();
        }
        foo: u8 = undefined,
        _root: ?*ParamsPassIo,
        _parent: ?*ParamsPassIo,
        _arena: *std.heap.ArenaAllocator,
        _io: *kaitai_struct.KaitaiStream,
    };
    pub const ParamType = struct {
        pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*ParamsPassIo, _root: ?*ParamsPassIo, arg_stream: *kaitai_struct.KaitaiStream) !*ParamType {
            const self = try _arena.allocator().create(ParamType);
            self.* = .{
                ._arena = _arena,
                ._io = _io,
                ._parent = _parent,
                ._root = _root,
            };
            self.arg_stream = arg_stream;
            try self._read();
            return self;
        }
        fn _allocator(self: *const ParamType) std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *ParamType) !void {
            self.buf = try self._io.readBytes(self._allocator(), (try self.arg_stream.size()));
        }
        buf: []u8 = undefined,
        arg_stream: *kaitai_struct.KaitaiStream = undefined,
        _root: ?*ParamsPassIo,
        _parent: ?*ParamsPassIo,
        _arena: *std.heap.ArenaAllocator,
        _io: *kaitai_struct.KaitaiStream,
    };
    first: *Block = undefined,
    one: *ParamType = undefined,
    _root: ?*ParamsPassIo,
    _parent: ?*anyopaque,
    _raw_first: []u8 = undefined,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
