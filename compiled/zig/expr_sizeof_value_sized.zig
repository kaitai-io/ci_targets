// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const ExprSizeofValueSized = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*ExprSizeofValueSized) !*ExprSizeofValueSized {
        const self = try _arena.allocator().create(ExprSizeofValueSized);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const ExprSizeofValueSized) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *ExprSizeofValueSized) !void {
        self._raw_block1 = try self._io.readBytes(self._allocator(), 12);
        const _io__raw_block1 = try self._allocator().create(kaitai_struct.KaitaiStream);
        _io__raw_block1.* = kaitai_struct.KaitaiStream.fromBytes(self._raw_block1);
        self.block1 = try Block.create(self._arena, _io__raw_block1, self, self._root);
        self.more = try self._io.readU2le();
    }
    pub const Block = struct {
        pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*ExprSizeofValueSized, _root: ?*ExprSizeofValueSized) !*Block {
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
            self.a = try self._io.readU1();
            self.b = try self._io.readU4le();
            self.c = try self._io.readBytes(self._allocator(), 2);
        }
        a: u8 = undefined,
        b: u32 = undefined,
        c: []u8 = undefined,
        _root: ?*ExprSizeofValueSized,
        _parent: ?*ExprSizeofValueSized,
        _arena: *std.heap.ArenaAllocator,
        _io: *kaitai_struct.KaitaiStream,
    };
    pub fn selfSizeof(self: *ExprSizeofValueSized) !i32 {
        if (self._m_self_sizeof) |_v|
            return _v;
        var _v: i32 = undefined;
        _v = 14;
        self._m_self_sizeof = _v;
        return _v;
    }
    pub fn sizeofBlock(self: *ExprSizeofValueSized) !i32 {
        if (self._m_sizeof_block) |_v|
            return _v;
        var _v: i32 = undefined;
        _v = 12;
        self._m_sizeof_block = _v;
        return _v;
    }
    pub fn sizeofBlockA(self: *ExprSizeofValueSized) !i32 {
        if (self._m_sizeof_block_a) |_v|
            return _v;
        var _v: i32 = undefined;
        _v = 1;
        self._m_sizeof_block_a = _v;
        return _v;
    }
    pub fn sizeofBlockB(self: *ExprSizeofValueSized) !i32 {
        if (self._m_sizeof_block_b) |_v|
            return _v;
        var _v: i32 = undefined;
        _v = 4;
        self._m_sizeof_block_b = _v;
        return _v;
    }
    pub fn sizeofBlockC(self: *ExprSizeofValueSized) !i32 {
        if (self._m_sizeof_block_c) |_v|
            return _v;
        var _v: i32 = undefined;
        _v = 2;
        self._m_sizeof_block_c = _v;
        return _v;
    }
    _m_self_sizeof: ?i32 = null,
    _m_sizeof_block: ?i32 = null,
    _m_sizeof_block_a: ?i32 = null,
    _m_sizeof_block_b: ?i32 = null,
    _m_sizeof_block_c: ?i32 = null,
    block1: *Block = undefined,
    more: u16 = undefined,
    _root: ?*ExprSizeofValueSized,
    _parent: ?*anyopaque,
    _raw_block1: []u8 = undefined,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
