// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const NavParent3 = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*NavParent3) !*NavParent3 {
        const self = try _arena.allocator().create(NavParent3);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const NavParent3) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *NavParent3) !void {
        self.ofs_tags = try self._io.readU4le();
        self.num_tags = try self._io.readU4le();
    }
    pub const Tag = struct {
        pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*NavParent3, _root: ?*NavParent3) !*Tag {
            const self = try _arena.allocator().create(Tag);
            self.* = .{
                ._arena = _arena,
                ._io = _io,
                ._parent = _parent,
                ._root = _root,
            };
            try self._read();
            return self;
        }
        fn _allocator(self: *const Tag) _imp_std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *Tag) !void {
            self.name = (try _imp_kaitai_struct.KaitaiStream.bytesToStr(self._allocator(), try self._io.readBytes(self._allocator(), 4), "ASCII"));
            self.ofs = try self._io.readU4le();
            self.num_items = try self._io.readU4le();
        }
        pub const TagChar = struct {
            pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*NavParent3.Tag, _root: ?*NavParent3) !*TagChar {
                const self = try _arena.allocator().create(TagChar);
                self.* = .{
                    ._arena = _arena,
                    ._io = _io,
                    ._parent = _parent,
                    ._root = _root,
                };
                try self._read();
                return self;
            }
            fn _allocator(self: *const TagChar) _imp_std.mem.Allocator {
                return self._arena.allocator();
            }
            fn _read(self: *TagChar) !void {
                self.content = (try _imp_kaitai_struct.KaitaiStream.bytesToStr(self._allocator(), try self._io.readBytes(self._allocator(), self._parent.?.num_items), "ASCII"));
            }
            content: []const u8 = undefined,
            _root: ?*NavParent3,
            _parent: ?*NavParent3.Tag,
            _arena: *_imp_std.heap.ArenaAllocator,
            _io: *_imp_kaitai_struct.KaitaiStream,
        };
        pub fn tagContent(self: *Tag) !?*TagChar {
            if (self._m_tag_content) |_v|
                return _v;
            var _v: *TagChar = undefined;
            const io = self._root.?._io;
            const _pos = io.pos();
            try io.seek(self.ofs);
            var _n = true;
            {
                const _on = self.name;
                if (_imp_std.mem.eql(u8, _on, "RAHC")) {
                    _n = false;
                    _v = try TagChar.create(self._arena, io, self, self._root);
                }
            }
            try io.seek(_pos);
            if (_n) {
                self._m_tag_content = @as(?*TagChar, null);
                return null;
            } else {
                self._m_tag_content = _v;
                return _v;
            }
        }
        _m_tag_content: ??*TagChar = null,
        name: []const u8 = undefined,
        ofs: u32 = undefined,
        num_items: u32 = undefined,
        _root: ?*NavParent3,
        _parent: ?*NavParent3,
        _arena: *_imp_std.heap.ArenaAllocator,
        _io: *_imp_kaitai_struct.KaitaiStream,
    };
    pub fn tags(self: *NavParent3) !*_imp_std.ArrayList(*Tag) {
        if (self._m_tags) |_v|
            return _v;
        var _v: *_imp_std.ArrayList(*Tag) = undefined;
        const _pos = self._io.pos();
        try self._io.seek(self.ofs_tags);
        _v = try self._allocator().create(_imp_std.ArrayList(*Tag));
        _v.* = .empty;
        for (0..self.num_tags) |i| {
            {
                const _maybe_unused = i;
                _ = _maybe_unused;
            }
            try _v.append(self._allocator(), try Tag.create(self._arena, self._io, self, self._root));
        }
        try self._io.seek(_pos);
        self._m_tags = _v;
        return _v;
    }
    _m_tags: ?*_imp_std.ArrayList(*Tag) = null,
    ofs_tags: u32 = undefined,
    num_tags: u32 = undefined,
    _root: ?*NavParent3,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
