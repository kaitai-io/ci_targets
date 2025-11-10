// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const NavRoot = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*NavRoot) !*NavRoot {
        const self = try _arena.allocator().create(NavRoot);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const NavRoot) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *NavRoot) !void {
        self.header = try HeaderObj.create(self._arena, self._io, self, self._root);
        self.index = try IndexObj.create(self._arena, self._io, self, self._root);
    }
    pub const Entry = struct {
        pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*NavRoot.IndexObj, _root: ?*NavRoot) !*Entry {
            const self = try _arena.allocator().create(Entry);
            self.* = .{
                ._arena = _arena,
                ._io = _io,
                ._parent = _parent,
                ._root = _root,
            };
            try self._read();
            return self;
        }
        fn _allocator(self: *const Entry) _imp_std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *Entry) !void {
            self.filename = (try _imp_kaitai_struct.KaitaiStream.bytesToStr(self._allocator(), try self._io.readBytes(self._allocator(), self._root.?.header.filename_len), "UTF-8"));
        }
        filename: []const u8 = undefined,
        _root: ?*NavRoot,
        _parent: ?*NavRoot.IndexObj,
        _arena: *_imp_std.heap.ArenaAllocator,
        _io: *_imp_kaitai_struct.KaitaiStream,
    };
    pub const HeaderObj = struct {
        pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*NavRoot, _root: ?*NavRoot) !*HeaderObj {
            const self = try _arena.allocator().create(HeaderObj);
            self.* = .{
                ._arena = _arena,
                ._io = _io,
                ._parent = _parent,
                ._root = _root,
            };
            try self._read();
            return self;
        }
        fn _allocator(self: *const HeaderObj) _imp_std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *HeaderObj) !void {
            self.qty_entries = try self._io.readU4le();
            self.filename_len = try self._io.readU4le();
        }
        qty_entries: u32 = undefined,
        filename_len: u32 = undefined,
        _root: ?*NavRoot,
        _parent: ?*NavRoot,
        _arena: *_imp_std.heap.ArenaAllocator,
        _io: *_imp_kaitai_struct.KaitaiStream,
    };
    pub const IndexObj = struct {
        pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*NavRoot, _root: ?*NavRoot) !*IndexObj {
            const self = try _arena.allocator().create(IndexObj);
            self.* = .{
                ._arena = _arena,
                ._io = _io,
                ._parent = _parent,
                ._root = _root,
            };
            try self._read();
            return self;
        }
        fn _allocator(self: *const IndexObj) _imp_std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *IndexObj) !void {
            self.magic = try self._io.readBytes(self._allocator(), 4);
            self.entries = try self._allocator().create(_imp_std.ArrayList(*Entry));
            self.entries.* = .empty;
            for (0..self._root.?.header.qty_entries) |i| {
                {
                    const _maybe_unused = i;
                    _ = _maybe_unused;
                }
                try self.entries.append(self._allocator(), try Entry.create(self._arena, self._io, self, self._root));
            }
        }
        magic: []const u8 = undefined,
        entries: *_imp_std.ArrayList(*Entry) = undefined,
        _root: ?*NavRoot,
        _parent: ?*NavRoot,
        _arena: *_imp_std.heap.ArenaAllocator,
        _io: *_imp_kaitai_struct.KaitaiStream,
    };
    header: *HeaderObj = undefined,
    index: *IndexObj = undefined,
    _root: ?*NavRoot,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
