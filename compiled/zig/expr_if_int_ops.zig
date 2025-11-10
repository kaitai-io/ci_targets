// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const ExprIfIntOps = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*ExprIfIntOps) !*ExprIfIntOps {
        const self = try _arena.allocator().create(ExprIfIntOps);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const ExprIfIntOps) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *ExprIfIntOps) !void {
        if (true) {
            self.key = try self._io.readU8le();
        }
        self.skip = try self._io.readBytes(self._allocator(), 8);
        const _raw_bytes = try self._io.readBytes(self._allocator(), 8);
        self.bytes = try _imp_kaitai_struct.KaitaiStream.processXorOne(self._allocator(), _raw_bytes, @as(u8, self.key));
        self.items = try self._allocator().create(_imp_std.ArrayList(i8));
        self.items.* = .empty;
        for (0..4) |i| {
            {
                const _maybe_unused = i;
                _ = _maybe_unused;
            }
            try self.items.append(self._allocator(), try self._io.readS1());
        }
    }
    pub fn bytesSubKey(self: *ExprIfIntOps) !u8 {
        if (self._m_bytes_sub_key) |_v|
            return _v;
        var _v: u8 = undefined;
        _v = self.bytes[self.key];
        self._m_bytes_sub_key = _v;
        return _v;
    }
    pub fn itemsSubKey(self: *ExprIfIntOps) !i8 {
        if (self._m_items_sub_key) |_v|
            return _v;
        var _v: i8 = undefined;
        _v = self.items.items[self.key];
        self._m_items_sub_key = _v;
        return _v;
    }
    _m_bytes_sub_key: ?u8 = null,
    _m_items_sub_key: ?i8 = null,
    key: ?u64 = null,
    skip: []const u8 = undefined,
    bytes: []const u8 = undefined,
    items: *_imp_std.ArrayList(i8) = undefined,
    _root: ?*ExprIfIntOps,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
