// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const InstanceIoUser = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*InstanceIoUser) !*InstanceIoUser {
        const self = try _arena.allocator().create(InstanceIoUser);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const InstanceIoUser) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *InstanceIoUser) !void {
        self.qty_entries = try self._io.readU4le();
        self.entries = try self._allocator().create(std.ArrayList(*Entry));
        self.entries.* = .empty;
        for (0..self.qty_entries) |i| {
            {
                const _maybe_unused = i;
                _ = _maybe_unused;
            }
            try self.entries.append(self._allocator(), try Entry.create(self._arena, self._io, self, self._root));
        }
        self._raw_strings = try self._io.readBytesFull(self._allocator());
        const _io__raw_strings = try self._allocator().create(kaitai_struct.KaitaiStream);
        _io__raw_strings.* = kaitai_struct.KaitaiStream.fromBytes(self._raw_strings);
        self.strings = try StringsObj.create(self._arena, _io__raw_strings, self, self._root);
    }
    pub const Entry = struct {
        pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*InstanceIoUser, _root: ?*InstanceIoUser) !*Entry {
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
            self.name_ofs = try self._io.readU4le();
            self.value = try self._io.readU4le();
        }
        pub fn name(self: *Entry) ![]u8 {
            if (self._m_name) |_v|
                return _v;
            var _v: []u8 = undefined;
            const io = self._root.?.strings._io;
            const _pos = io.pos();
            try io.seek(self.name_ofs);
            _v = kaitai_struct.KaitaiStream.bytesToStr(try io.readBytesTerm(self._allocator(), 0, false, true, true), "UTF-8");
            try io.seek(_pos);
            self._m_name = _v;
            return _v;
        }
        _m_name: ?[]u8 = null,
        name_ofs: u32 = undefined,
        value: u32 = undefined,
        _root: ?*InstanceIoUser,
        _parent: ?*InstanceIoUser,
        _arena: *std.heap.ArenaAllocator,
        _io: *kaitai_struct.KaitaiStream,
    };
    pub const StringsObj = struct {
        pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*InstanceIoUser, _root: ?*InstanceIoUser) !*StringsObj {
            const self = try _arena.allocator().create(StringsObj);
            self.* = .{
                ._arena = _arena,
                ._io = _io,
                ._parent = _parent,
                ._root = _root,
            };
            try self._read();
            return self;
        }
        fn _allocator(self: *const StringsObj) std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *StringsObj) !void {
            self.str = try self._allocator().create(std.ArrayList([]u8));
            self.str.* = .empty;
            {
                var i: usize = 0;
                while (!try self._io.isEof()) : (i += 1) {
                    try self.str.append(self._allocator(), kaitai_struct.KaitaiStream.bytesToStr(try self._io.readBytesTerm(self._allocator(), 0, false, true, true), "UTF-8"));
                }
            }
        }
        str: *std.ArrayList([]u8) = undefined,
        _root: ?*InstanceIoUser,
        _parent: ?*InstanceIoUser,
        _arena: *std.heap.ArenaAllocator,
        _io: *kaitai_struct.KaitaiStream,
    };
    qty_entries: u32 = undefined,
    entries: *std.ArrayList(*Entry) = undefined,
    strings: *StringsObj = undefined,
    _root: ?*InstanceIoUser,
    _parent: ?*anyopaque,
    _raw_strings: []u8 = undefined,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
