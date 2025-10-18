// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const NavParent3 = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*NavParent3) !*NavParent3 {
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
    fn _allocator(self: *const NavParent3) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *NavParent3) !void {
        self.ofs_tags = try self._io.readU4le();
        self.num_tags = try self._io.readU4le();
    }
    pub const Tag = struct {
        pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*NavParent3, _root: ?*NavParent3) !*Tag {
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
        fn _allocator(self: *const Tag) std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *Tag) !void {
            self.name = kaitai_struct.KaitaiStream.bytesToStr(try self._io.readBytes(self._allocator(), 4), "ASCII");
            self.ofs = try self._io.readU4le();
            self.num_items = try self._io.readU4le();
        }
        pub const TagChar = struct {
            pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*NavParent3.Tag, _root: ?*NavParent3) !*TagChar {
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
            fn _allocator(self: *const TagChar) std.mem.Allocator {
                return self._arena.allocator();
            }
            fn _read(self: *TagChar) !void {
                self.content = kaitai_struct.KaitaiStream.bytesToStr(try self._io.readBytes(self._allocator(), self._parent.?.num_items), "ASCII");
            }
            content: []u8 = undefined,
            _root: ?*NavParent3,
            _parent: ?*NavParent3.Tag,
            _arena: *std.heap.ArenaAllocator,
            _io: *kaitai_struct.KaitaiStream,
        };
        pub fn tagContent(self: *Tag) !?*TagChar {
            if (self._m_tag_content) |_v|
                return _v;
            var _v: ?*TagChar = null;
            const io = self._root.?._io;
            const _pos = io.pos();
            try io.seek(self.ofs);
            {
                const _on = self.name;
                if (std.mem.eql(u8, _on, "RAHC")) {
                    _v = try TagChar.create(self._arena, io, self, self._root);
                }
            }
            try io.seek(_pos);
            self._m_tag_content = _v;
            return _v;
        }
        _m_tag_content: ??*TagChar = null,
        name: []u8 = undefined,
        ofs: u32 = undefined,
        num_items: u32 = undefined,
        _root: ?*NavParent3,
        _parent: ?*NavParent3,
        _arena: *std.heap.ArenaAllocator,
        _io: *kaitai_struct.KaitaiStream,
    };
    pub fn tags(self: *NavParent3) !*std.ArrayList(*Tag) {
        if (self._m_tags) |_v|
            return _v;
        var _v: *std.ArrayList(*Tag) = undefined;
        const _pos = self._io.pos();
        try self._io.seek(self.ofs_tags);
        self._m_tags = try self._allocator().create(std.ArrayList(*Tag));
        self._m_tags.* = .empty;
        for (0..self.num_tags) |i| {
            {
                const _maybe_unused = i;
                _ = _maybe_unused;
            }
            try self._m_tags.append(self._allocator(), try Tag.create(self._arena, self._io, self, self._root));
        }
        try self._io.seek(_pos);
        self._m_tags = _v;
        return _v;
    }
    _m_tags: ?*std.ArrayList(*Tag) = null,
    ofs_tags: u32 = undefined,
    num_tags: u32 = undefined,
    _root: ?*NavParent3,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
