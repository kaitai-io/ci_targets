// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const InstanceUserArray = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*InstanceUserArray) !*InstanceUserArray {
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
    fn _allocator(self: *const InstanceUserArray) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *InstanceUserArray) !void {
        self.ofs = try self._io.readU4le();
        self.entry_size = try self._io.readU4le();
        self.qty_entries = try self._io.readU4le();
    }
    pub const Entry = struct {
        pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*InstanceUserArray, _root: ?*InstanceUserArray) !*Entry {
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
            self.word1 = try self._io.readU2le();
            self.word2 = try self._io.readU2le();
        }
        word1: u16 = undefined,
        word2: u16 = undefined,
        _root: ?*InstanceUserArray,
        _parent: ?*InstanceUserArray,
        _arena: *_imp_std.heap.ArenaAllocator,
        _io: *_imp_kaitai_struct.KaitaiStream,
    };
    pub fn userEntries(self: *InstanceUserArray) !?*_imp_std.ArrayList(*Entry) {
        if (self._m_user_entries) |_v|
            return _v;
        var _v: *_imp_std.ArrayList(*Entry) = undefined;
        var _n = true;
        if (self.ofs > 0) {
            _n = false;
            const _pos = self._io.pos();
            try self._io.seek(self.ofs);
            _v = try self._allocator().create(_imp_std.ArrayList(*Entry));
            _v.* = .empty;
            for (0..self.qty_entries) |i| {
                {
                    const _maybe_unused = i;
                    _ = _maybe_unused;
                }
                const _raw__m_user_entries = try self._io.readBytes(self._allocator(), self.entry_size);
                const _io__raw__m_user_entries = try self._allocator().create(_imp_kaitai_struct.KaitaiStream);
                _io__raw__m_user_entries.* = _imp_kaitai_struct.KaitaiStream.fromBytes(_raw__m_user_entries);
                try _v.append(self._allocator(), try Entry.create(self._arena, _io__raw__m_user_entries, self, self._root));
            }
            try self._io.seek(_pos);
        }
        if (_n) {
            self._m_user_entries = @as(?*_imp_std.ArrayList(*Entry), null);
            return null;
        } else {
            self._m_user_entries = _v;
            return _v;
        }
    }
    _m_user_entries: ??*_imp_std.ArrayList(*Entry) = null,
    ofs: u32 = undefined,
    entry_size: u32 = undefined,
    qty_entries: u32 = undefined,
    _root: ?*InstanceUserArray,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
