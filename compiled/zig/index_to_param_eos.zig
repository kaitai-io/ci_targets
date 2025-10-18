// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const IndexToParamEos = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*IndexToParamEos) !*IndexToParamEos {
        const self = try _arena.allocator().create(IndexToParamEos);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const IndexToParamEos) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *IndexToParamEos) !void {
        self.qty = try self._io.readU4le();
        self.sizes = try self._allocator().create(std.ArrayList(u32));
        self.sizes.* = .empty;
        for (0..self.qty) |i| {
            {
                const _maybe_unused = i;
                _ = _maybe_unused;
            }
            try self.sizes.append(self._allocator(), try self._io.readU4le());
        }
        self.blocks = try self._allocator().create(std.ArrayList(*Block));
        self.blocks.* = .empty;
        {
            var i: usize = 0;
            while (!try self._io.isEof()) : (i += 1) {
                try self.blocks.append(self._allocator(), try Block.create(self._arena, self._io, self, self._root, i));
            }
        }
    }
    pub const Block = struct {
        pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*IndexToParamEos, _root: ?*IndexToParamEos, idx: i32) !*Block {
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
        fn _allocator(self: *const Block) std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *Block) !void {
            self.buf = kaitai_struct.KaitaiStream.bytesToStr(try self._io.readBytes(self._allocator(), self._root.?.sizes.items[self.idx]), "ASCII");
        }
        buf: []u8 = undefined,
        idx: i32 = undefined,
        _root: ?*IndexToParamEos,
        _parent: ?*IndexToParamEos,
        _arena: *std.heap.ArenaAllocator,
        _io: *kaitai_struct.KaitaiStream,
    };
    qty: u32 = undefined,
    sizes: *std.ArrayList(u32) = undefined,
    blocks: *std.ArrayList(*Block) = undefined,
    _root: ?*IndexToParamEos,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
