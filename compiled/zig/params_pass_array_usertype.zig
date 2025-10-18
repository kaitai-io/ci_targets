// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const ParamsPassArrayUsertype = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*ParamsPassArrayUsertype) !*ParamsPassArrayUsertype {
        const self = try _arena.allocator().create(ParamsPassArrayUsertype);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const ParamsPassArrayUsertype) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *ParamsPassArrayUsertype) !void {
        self.blocks = try self._allocator().create(std.ArrayList(*Block));
        self.blocks.* = .empty;
        for (0..2) |i| {
            {
                const _maybe_unused = i;
                _ = _maybe_unused;
            }
            try self.blocks.append(self._allocator(), try Block.create(self._arena, self._io, self, self._root));
        }
        self.pass_blocks = try ParamType.create(self._arena, self._io, self, self._root, self.blocks);
    }
    pub const Block = struct {
        pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*ParamsPassArrayUsertype, _root: ?*ParamsPassArrayUsertype) !*Block {
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
        _root: ?*ParamsPassArrayUsertype,
        _parent: ?*ParamsPassArrayUsertype,
        _arena: *std.heap.ArenaAllocator,
        _io: *kaitai_struct.KaitaiStream,
    };
    pub const ParamType = struct {
        pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*ParamsPassArrayUsertype, _root: ?*ParamsPassArrayUsertype, bar: *std.ArrayList(*Block)) !*ParamType {
            const self = try _arena.allocator().create(ParamType);
            self.* = .{
                ._arena = _arena,
                ._io = _io,
                ._parent = _parent,
                ._root = _root,
            };
            self.bar = bar;
            try self._read();
            return self;
        }
        fn _allocator(self: *const ParamType) std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *ParamType) !void {
            self.one = try self._io.readBytes(self._allocator(), self.bar.items[0].foo);
            self.two = try self._io.readBytes(self._allocator(), self.bar.items[1].foo);
        }
        one: []u8 = undefined,
        two: []u8 = undefined,
        bar: *std.ArrayList(*Block) = undefined,
        _root: ?*ParamsPassArrayUsertype,
        _parent: ?*ParamsPassArrayUsertype,
        _arena: *std.heap.ArenaAllocator,
        _io: *kaitai_struct.KaitaiStream,
    };
    blocks: *std.ArrayList(*Block) = undefined,
    pass_blocks: *ParamType = undefined,
    _root: ?*ParamsPassArrayUsertype,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
