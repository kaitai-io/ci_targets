// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const IndexToParamExpr = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*IndexToParamExpr) !*IndexToParamExpr {
        const self = try _arena.allocator().create(IndexToParamExpr);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const IndexToParamExpr) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *IndexToParamExpr) !void {
        self.qty = try self._io.readU4le();
        self.sizes = try self._allocator().create(_imp_std.ArrayList(u32));
        self.sizes.* = .empty;
        for (0..self.qty) |i| {
            {
                const _maybe_unused = i;
                _ = _maybe_unused;
            }
            try self.sizes.append(self._allocator(), try self._io.readU4le());
        }
        self.blocks = try self._allocator().create(_imp_std.ArrayList(*Block));
        self.blocks.* = .empty;
        for (0..self.qty) |i| {
            {
                const _maybe_unused = i;
                _ = _maybe_unused;
            }
            try self.blocks.append(self._allocator(), try Block.create(self._arena, self._io, self, self._root, i));
        }
    }
    pub const Block = struct {
        pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*IndexToParamExpr, _root: ?*IndexToParamExpr, idx: i32) !*Block {
            const self = try _arena.allocator().create(Block);
            self.* = .{
                ._arena = _arena,
                ._io = _io,
                ._parent = _parent,
                ._root = _root,
            };
            self.idx = idx;
            try self._read();
            return self;
        }
        fn _allocator(self: *const Block) _imp_std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *Block) !void {
            self.buf = (try _imp_kaitai_struct.KaitaiStream.bytesToStr(self._allocator(), try self._io.readBytes(self._allocator(), self._root.?.sizes.items[self.idx]), "ASCII"));
        }
        buf: []const u8 = undefined,
        idx: i32 = undefined,
        _root: ?*IndexToParamExpr,
        _parent: ?*IndexToParamExpr,
        _arena: *_imp_std.heap.ArenaAllocator,
        _io: *_imp_kaitai_struct.KaitaiStream,
    };
    qty: u32 = undefined,
    sizes: *_imp_std.ArrayList(u32) = undefined,
    blocks: *_imp_std.ArrayList(*Block) = undefined,
    _root: ?*IndexToParamExpr,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
