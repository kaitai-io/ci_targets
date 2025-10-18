// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const InstanceUserArray = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*InstanceUserArray) !*InstanceUserArray {
        const self = try _arena.allocator().create(InstanceUserArray);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const InstanceUserArray) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *InstanceUserArray) !void {
        self.ofs = try self._io.readU4le();
        self.entry_size = try self._io.readU4le();
        self.qty_entries = try self._io.readU4le();
    }
    pub const Entry = struct {
        pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*InstanceUserArray, _root: ?*InstanceUserArray) !*Entry {
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
            self.word1 = try self._io.readU2le();
            self.word2 = try self._io.readU2le();
        }
        word1: u16 = undefined,
        word2: u16 = undefined,
        _root: ?*InstanceUserArray,
        _parent: ?*InstanceUserArray,
        _arena: *std.heap.ArenaAllocator,
        _io: *kaitai_struct.KaitaiStream,
    };
    pub fn userEntries(self: *InstanceUserArray) !?*std.ArrayList(*Entry) {
        if (self._m_user_entries) |_v|
            return _v;
        var _v: ?*std.ArrayList(*Entry) = null;
        if (self.ofs > 0) {
            const _pos = self._io.pos();
            try self._io.seek(self.ofs);
            self._raw__m_user_entries = try self._allocator().create(std.ArrayList([]u8));
            self._raw__m_user_entries.* = .empty;
            self._m_user_entries = try self._allocator().create(std.ArrayList(*Entry));
            self._m_user_entries.* = .empty;
            for (0..self.qty_entries) |i| {
                {
                    const _maybe_unused = i;
                    _ = _maybe_unused;
                }
                try self._raw__m_user_entries.append(self._allocator(), try self._io.readBytes(self._allocator(), self.entry_size));
                const _io__raw__m_user_entries = try self._allocator().create(kaitai_struct.KaitaiStream);
                _io__raw__m_user_entries.* = kaitai_struct.KaitaiStream.fromBytes(self._raw__m_user_entries.items[i]);
                try self._m_user_entries.append(self._allocator(), try Entry.create(self._arena, _io__raw__m_user_entries, self, self._root));
            }
            try self._io.seek(_pos);
        }
        self._m_user_entries = _v;
        return _v;
    }
    _m_user_entries: ??*std.ArrayList(*Entry) = null,
    ofs: u32 = undefined,
    entry_size: u32 = undefined,
    qty_entries: u32 = undefined,
    _root: ?*InstanceUserArray,
    _parent: ?*anyopaque,
    _raw__m_user_entries: ?*std.ArrayList([]u8) = null,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
