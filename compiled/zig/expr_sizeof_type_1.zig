// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const ExprSizeofType1 = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*ExprSizeofType1) !*ExprSizeofType1 {
        const self = try _arena.allocator().create(ExprSizeofType1);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const ExprSizeofType1) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *ExprSizeofType1) !void {
        _ = self;
    }
    pub const Block = struct {
        pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*ExprSizeofType1) !*Block {
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
            self.d = try Subblock.create(self._arena, self._io, self, self._root);
        }
        pub const Subblock = struct {
            pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*ExprSizeofType1.Block, _root: ?*ExprSizeofType1) !*Subblock {
                const self = try _arena.allocator().create(Subblock);
                self.* = .{
                    ._arena = _arena,
                    ._io = _io,
                    ._parent = _parent,
                    ._root = _root,
                };
                try self._read();
                return self;
            }
            fn _allocator(self: *const Subblock) _imp_std.mem.Allocator {
                return self._arena.allocator();
            }
            fn _read(self: *Subblock) !void {
                self.a = try self._io.readBytes(self._allocator(), 4);
            }
            a: []const u8 = undefined,
            _root: ?*ExprSizeofType1,
            _parent: ?*ExprSizeofType1.Block,
            _arena: *_imp_std.heap.ArenaAllocator,
            _io: *_imp_kaitai_struct.KaitaiStream,
        };
        a: u8 = undefined,
        b: u32 = undefined,
        c: []const u8 = undefined,
        d: *Subblock = undefined,
        _root: ?*ExprSizeofType1,
        _parent: ?*anyopaque,
        _arena: *_imp_std.heap.ArenaAllocator,
        _io: *_imp_kaitai_struct.KaitaiStream,
    };
    pub fn sizeofBlock(self: *ExprSizeofType1) !i32 {
        if (self._m_sizeof_block) |_v|
            return _v;
        var _v: i32 = undefined;
        _v = 11;
        self._m_sizeof_block = _v;
        return _v;
    }
    pub fn sizeofSubblock(self: *ExprSizeofType1) !i32 {
        if (self._m_sizeof_subblock) |_v|
            return _v;
        var _v: i32 = undefined;
        _v = 4;
        self._m_sizeof_subblock = _v;
        return _v;
    }
    _m_sizeof_block: ?i32 = null,
    _m_sizeof_subblock: ?i32 = null,
    _root: ?*ExprSizeofType1,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
