// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const ZlibSurrounded = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*ZlibSurrounded) !*ZlibSurrounded {
        const self = try _arena.allocator().create(ZlibSurrounded);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const ZlibSurrounded) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *ZlibSurrounded) !void {
        self.pre = try self._io.readBytes(self._allocator(), 4);
        const _raw__raw_zlib = try self._io.readBytes(self._allocator(), 12);
        const _raw_zlib = try _imp_kaitai_struct.KaitaiStream.processZlib(self._allocator(), _raw__raw_zlib);
        const _io__raw_zlib = try self._allocator().create(_imp_kaitai_struct.KaitaiStream);
        _io__raw_zlib.* = _imp_kaitai_struct.KaitaiStream.fromBytes(_raw_zlib);
        self.zlib = try Inflated.create(self._arena, _io__raw_zlib, self, self._root);
        self.post = try self._io.readBytes(self._allocator(), 4);
    }
    pub const Inflated = struct {
        pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*ZlibSurrounded, _root: ?*ZlibSurrounded) !*Inflated {
            const self = try _arena.allocator().create(Inflated);
            self.* = .{
                ._arena = _arena,
                ._io = _io,
                ._parent = _parent,
                ._root = _root,
            };
            try self._read();
            return self;
        }
        fn _allocator(self: *const Inflated) _imp_std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *Inflated) !void {
            self.num = try self._io.readS4le();
        }
        num: i32 = undefined,
        _root: ?*ZlibSurrounded,
        _parent: ?*ZlibSurrounded,
        _arena: *_imp_std.heap.ArenaAllocator,
        _io: *_imp_kaitai_struct.KaitaiStream,
    };
    pre: []const u8 = undefined,
    zlib: *Inflated = undefined,
    post: []const u8 = undefined,
    _root: ?*ZlibSurrounded,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
