// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const IndexSizes = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*IndexSizes) !*IndexSizes {
        const self = try _arena.allocator().create(IndexSizes);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const IndexSizes) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *IndexSizes) !void {
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
        self.bufs = try self._allocator().create(_imp_std.ArrayList([]const u8));
        self.bufs.* = .empty;
        for (0..self.qty) |i| {
            {
                const _maybe_unused = i;
                _ = _maybe_unused;
            }
            try self.bufs.append(self._allocator(), (try _imp_kaitai_struct.KaitaiStream.bytesToStr(self._allocator(), try self._io.readBytes(self._allocator(), self.sizes.items[i]), "ASCII")));
        }
    }
    qty: u32 = undefined,
    sizes: *_imp_std.ArrayList(u32) = undefined,
    bufs: *_imp_std.ArrayList([]const u8) = undefined,
    _root: ?*IndexSizes,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
