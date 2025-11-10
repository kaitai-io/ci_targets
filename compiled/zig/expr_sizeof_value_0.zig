// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const ExprSizeofValue0 = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*ExprSizeofValue0) !*ExprSizeofValue0 {
        const self = try _arena.allocator().create(ExprSizeofValue0);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const ExprSizeofValue0) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *ExprSizeofValue0) !void {
        self.block1 = try Block.create(self._arena, self._io, self, self._root);
        self.more = try self._io.readU2le();
    }
    pub const Block = struct {
        pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*ExprSizeofValue0, _root: ?*ExprSizeofValue0) !*Block {
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
            self.a = try self._io.readU1();
            self.b = try self._io.readU4le();
            self.c = try self._io.readBytes(self._allocator(), 2);
        }
        a: u8 = undefined,
        b: u32 = undefined,
        c: []const u8 = undefined,
        _root: ?*ExprSizeofValue0,
        _parent: ?*ExprSizeofValue0,
        _arena: *_imp_std.heap.ArenaAllocator,
        _io: *_imp_kaitai_struct.KaitaiStream,
    };
    pub fn selfSizeof(self: *ExprSizeofValue0) !i32 {
        if (self._m_self_sizeof) |_v|
            return _v;
        var _v: i32 = undefined;
        _v = 9;
        self._m_self_sizeof = _v;
        return _v;
    }
    pub fn sizeofBlock(self: *ExprSizeofValue0) !i32 {
        if (self._m_sizeof_block) |_v|
            return _v;
        var _v: i32 = undefined;
        _v = 7;
        self._m_sizeof_block = _v;
        return _v;
    }
    pub fn sizeofBlockA(self: *ExprSizeofValue0) !i32 {
        if (self._m_sizeof_block_a) |_v|
            return _v;
        var _v: i32 = undefined;
        _v = 1;
        self._m_sizeof_block_a = _v;
        return _v;
    }
    pub fn sizeofBlockB(self: *ExprSizeofValue0) !i32 {
        if (self._m_sizeof_block_b) |_v|
            return _v;
        var _v: i32 = undefined;
        _v = 4;
        self._m_sizeof_block_b = _v;
        return _v;
    }
    pub fn sizeofBlockC(self: *ExprSizeofValue0) !i32 {
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
    _root: ?*ExprSizeofValue0,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
