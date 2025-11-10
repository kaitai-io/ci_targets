// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const UserType = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*UserType) !*UserType {
        const self = try _arena.allocator().create(UserType);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const UserType) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *UserType) !void {
        self.one = try Header.create(self._arena, self._io, self, self._root);
    }
    pub const Header = struct {
        pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*UserType, _root: ?*UserType) !*Header {
            const self = try _arena.allocator().create(Header);
            self.* = .{
                ._arena = _arena,
                ._io = _io,
                ._parent = _parent,
                ._root = _root,
            };
            try self._read();
            return self;
        }
        fn _allocator(self: *const Header) _imp_std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *Header) !void {
            self.width = try self._io.readU4le();
            self.height = try self._io.readU4le();
        }
        width: u32 = undefined,
        height: u32 = undefined,
        _root: ?*UserType,
        _parent: ?*UserType,
        _arena: *_imp_std.heap.ArenaAllocator,
        _io: *_imp_kaitai_struct.KaitaiStream,
    };
    one: *Header = undefined,
    _root: ?*UserType,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
