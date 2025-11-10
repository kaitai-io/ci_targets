// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const StrEncodingsUtf16 = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*StrEncodingsUtf16) !*StrEncodingsUtf16 {
        const self = try _arena.allocator().create(StrEncodingsUtf16);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const StrEncodingsUtf16) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *StrEncodingsUtf16) !void {
        self.len_be = try self._io.readU4le();
        const _raw_be_bom_removed = try self._io.readBytes(self._allocator(), self.len_be);
        const _io__raw_be_bom_removed = try self._allocator().create(_imp_kaitai_struct.KaitaiStream);
        _io__raw_be_bom_removed.* = _imp_kaitai_struct.KaitaiStream.fromBytes(_raw_be_bom_removed);
        self.be_bom_removed = try StrBeBomRemoved.create(self._arena, _io__raw_be_bom_removed, self, self._root);
        self.len_le = try self._io.readU4le();
        const _raw_le_bom_removed = try self._io.readBytes(self._allocator(), self.len_le);
        const _io__raw_le_bom_removed = try self._allocator().create(_imp_kaitai_struct.KaitaiStream);
        _io__raw_le_bom_removed.* = _imp_kaitai_struct.KaitaiStream.fromBytes(_raw_le_bom_removed);
        self.le_bom_removed = try StrLeBomRemoved.create(self._arena, _io__raw_le_bom_removed, self, self._root);
    }
    pub const StrBeBomRemoved = struct {
        pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*StrEncodingsUtf16, _root: ?*StrEncodingsUtf16) !*StrBeBomRemoved {
            const self = try _arena.allocator().create(StrBeBomRemoved);
            self.* = .{
                ._arena = _arena,
                ._io = _io,
                ._parent = _parent,
                ._root = _root,
            };
            try self._read();
            return self;
        }
        fn _allocator(self: *const StrBeBomRemoved) _imp_std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *StrBeBomRemoved) !void {
            self.bom = try self._io.readU2be();
            self.str = (try _imp_kaitai_struct.KaitaiStream.bytesToStr(self._allocator(), try self._io.readBytesFull(self._allocator()), "UTF-16BE"));
        }
        bom: u16 = undefined,
        str: []const u8 = undefined,
        _root: ?*StrEncodingsUtf16,
        _parent: ?*StrEncodingsUtf16,
        _arena: *_imp_std.heap.ArenaAllocator,
        _io: *_imp_kaitai_struct.KaitaiStream,
    };
    pub const StrLeBomRemoved = struct {
        pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*StrEncodingsUtf16, _root: ?*StrEncodingsUtf16) !*StrLeBomRemoved {
            const self = try _arena.allocator().create(StrLeBomRemoved);
            self.* = .{
                ._arena = _arena,
                ._io = _io,
                ._parent = _parent,
                ._root = _root,
            };
            try self._read();
            return self;
        }
        fn _allocator(self: *const StrLeBomRemoved) _imp_std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *StrLeBomRemoved) !void {
            self.bom = try self._io.readU2le();
            self.str = (try _imp_kaitai_struct.KaitaiStream.bytesToStr(self._allocator(), try self._io.readBytesFull(self._allocator()), "UTF-16LE"));
        }
        bom: u16 = undefined,
        str: []const u8 = undefined,
        _root: ?*StrEncodingsUtf16,
        _parent: ?*StrEncodingsUtf16,
        _arena: *_imp_std.heap.ArenaAllocator,
        _io: *_imp_kaitai_struct.KaitaiStream,
    };
    len_be: u32 = undefined,
    be_bom_removed: *StrBeBomRemoved = undefined,
    len_le: u32 = undefined,
    le_bom_removed: *StrLeBomRemoved = undefined,
    _root: ?*StrEncodingsUtf16,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
