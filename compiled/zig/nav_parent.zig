// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const NavParent = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*NavParent) !*NavParent {
        const self = try _arena.allocator().create(NavParent);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const NavParent) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *NavParent) !void {
        self.header = try HeaderObj.create(self._arena, self._io, self, self._root);
        self.index = try IndexObj.create(self._arena, self._io, self, self._root);
    }
    pub const Entry = struct {
        pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*NavParent.IndexObj, _root: ?*NavParent) !*Entry {
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
        fn _allocator(self: *const Entry) std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *Entry) !void {
            self.filename = kaitai_struct.KaitaiStream.bytesToStr(try self._io.readBytes(self._allocator(), self._parent.?._parent.?.header.filename_len), "UTF-8");
        }
        filename: []u8 = undefined,
        _root: ?*NavParent,
        _parent: ?*NavParent.IndexObj,
        _arena: *std.heap.ArenaAllocator,
        _io: *kaitai_struct.KaitaiStream,
    };
    pub const HeaderObj = struct {
        pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*NavParent, _root: ?*NavParent) !*HeaderObj {
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
        fn _allocator(self: *const HeaderObj) std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *HeaderObj) !void {
            self.qty_entries = try self._io.readU4le();
            self.filename_len = try self._io.readU4le();
        }
        qty_entries: u32 = undefined,
        filename_len: u32 = undefined,
        _root: ?*NavParent,
        _parent: ?*NavParent,
        _arena: *std.heap.ArenaAllocator,
        _io: *kaitai_struct.KaitaiStream,
    };
    pub const IndexObj = struct {
        pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*NavParent, _root: ?*NavParent) !*IndexObj {
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
        fn _allocator(self: *const IndexObj) std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *IndexObj) !void {
            self.magic = try self._io.readBytes(self._allocator(), 4);
            self.entries = try self._allocator().create(std.ArrayList(*Entry));
            self.entries.* = .empty;
            for (0..self._parent.?.header.qty_entries) |i| {
                {
                    const _maybe_unused = i;
                    _ = _maybe_unused;
                }
                try self.entries.append(self._allocator(), try Entry.create(self._arena, self._io, self, self._root));
            }
        }
        magic: []u8 = undefined,
        entries: *std.ArrayList(*Entry) = undefined,
        _root: ?*NavParent,
        _parent: ?*NavParent,
        _arena: *std.heap.ArenaAllocator,
        _io: *kaitai_struct.KaitaiStream,
    };
    header: *HeaderObj = undefined,
    index: *IndexObj = undefined,
    _root: ?*NavParent,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
