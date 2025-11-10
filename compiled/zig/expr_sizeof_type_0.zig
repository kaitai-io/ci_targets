// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const ExprSizeofType0 = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*ExprSizeofType0) !*ExprSizeofType0 {
        const self = try _arena.allocator().create(ExprSizeofType0);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const ExprSizeofType0) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *ExprSizeofType0) !void {
        _ = self;
    }
    pub const Block = struct {
        pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*ExprSizeofType0) !*Block {
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
        _root: ?*ExprSizeofType0,
        _parent: ?*anyopaque,
        _arena: *_imp_std.heap.ArenaAllocator,
        _io: *_imp_kaitai_struct.KaitaiStream,
    };
    pub fn sizeofBlock(self: *ExprSizeofType0) !i32 {
        if (self._m_sizeof_block) |_v|
            return _v;
        var _v: i32 = undefined;
        _v = 7;
        self._m_sizeof_block = _v;
        return _v;
    }
    _m_sizeof_block: ?i32 = null,
    _root: ?*ExprSizeofType0,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
