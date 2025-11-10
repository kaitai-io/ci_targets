// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const InstanceIoUser = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*InstanceIoUser) !*InstanceIoUser {
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
    fn _allocator(self: *const InstanceIoUser) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *InstanceIoUser) !void {
        self.qty_entries = try self._io.readU4le();
        self.entries = try self._allocator().create(_imp_std.ArrayList(*Entry));
        self.entries.* = .empty;
        for (0..self.qty_entries) |i| {
            {
                const _maybe_unused = i;
                _ = _maybe_unused;
            }
            try self.entries.append(self._allocator(), try Entry.create(self._arena, self._io, self, self._root));
        }
        const _raw_strings = try self._io.readBytesFull(self._allocator());
        const _io__raw_strings = try self._allocator().create(_imp_kaitai_struct.KaitaiStream);
        _io__raw_strings.* = _imp_kaitai_struct.KaitaiStream.fromBytes(_raw_strings);
        self.strings = try StringsObj.create(self._arena, _io__raw_strings, self, self._root);
    }
    pub const Entry = struct {
        pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*InstanceIoUser, _root: ?*InstanceIoUser) !*Entry {
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
            self.name_ofs = try self._io.readU4le();
            self.value = try self._io.readU4le();
        }
        pub fn name(self: *Entry) ![]const u8 {
            if (self._m_name) |_v|
                return _v;
            var _v: []const u8 = undefined;
            const io = self._root.?.strings._io;
            const _pos = io.pos();
            try io.seek(self.name_ofs);
            _v = (try _imp_kaitai_struct.KaitaiStream.bytesToStr(self._allocator(), try io.readBytesTerm(self._allocator(), 0, false, true, true), "UTF-8"));
            try io.seek(_pos);
            self._m_name = _v;
            return _v;
        }
        _m_name: ?[]const u8 = null,
        name_ofs: u32 = undefined,
        value: u32 = undefined,
        _root: ?*InstanceIoUser,
        _parent: ?*InstanceIoUser,
        _arena: *_imp_std.heap.ArenaAllocator,
        _io: *_imp_kaitai_struct.KaitaiStream,
    };
    pub const StringsObj = struct {
        pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*InstanceIoUser, _root: ?*InstanceIoUser) !*StringsObj {
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
        fn _allocator(self: *const StringsObj) _imp_std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *StringsObj) !void {
            self.str = try self._allocator().create(_imp_std.ArrayList([]const u8));
            self.str.* = .empty;
            {
                var i: usize = 0;
                while (!try self._io.isEof()) : (i += 1) {
                    try self.str.append(self._allocator(), (try _imp_kaitai_struct.KaitaiStream.bytesToStr(self._allocator(), try self._io.readBytesTerm(self._allocator(), 0, false, true, true), "UTF-8")));
                }
            }
        }
        str: *_imp_std.ArrayList([]const u8) = undefined,
        _root: ?*InstanceIoUser,
        _parent: ?*InstanceIoUser,
        _arena: *_imp_std.heap.ArenaAllocator,
        _io: *_imp_kaitai_struct.KaitaiStream,
    };
    qty_entries: u32 = undefined,
    entries: *_imp_std.ArrayList(*Entry) = undefined,
    strings: *StringsObj = undefined,
    _root: ?*InstanceIoUser,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
