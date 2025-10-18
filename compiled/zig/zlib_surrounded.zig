// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const ZlibSurrounded = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*ZlibSurrounded) !*ZlibSurrounded {
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
    fn _allocator(self: *const ZlibSurrounded) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *ZlibSurrounded) !void {
        self.pre = try self._io.readBytes(self._allocator(), 4);
        self._raw__raw_zlib = try self._io.readBytes(self._allocator(), 12);
        self._raw_zlib = kaitai_struct.KaitaiStream.processZlib(self._raw__raw_zlib);
        const _io__raw_zlib = try self._allocator().create(kaitai_struct.KaitaiStream);
        _io__raw_zlib.* = kaitai_struct.KaitaiStream.fromBytes(self._raw_zlib);
        self.zlib = try Inflated.create(self._arena, _io__raw_zlib, self, self._root);
        self.post = try self._io.readBytes(self._allocator(), 4);
    }
    pub const Inflated = struct {
        pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*ZlibSurrounded, _root: ?*ZlibSurrounded) !*Inflated {
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
        fn _allocator(self: *const Inflated) std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *Inflated) !void {
            self.num = try self._io.readS4le();
        }
        num: i32 = undefined,
        _root: ?*ZlibSurrounded,
        _parent: ?*ZlibSurrounded,
        _arena: *std.heap.ArenaAllocator,
        _io: *kaitai_struct.KaitaiStream,
    };
    pre: []u8 = undefined,
    zlib: *Inflated = undefined,
    post: []u8 = undefined,
    _root: ?*ZlibSurrounded,
    _parent: ?*anyopaque,
    _raw_zlib: []u8 = undefined,
    _raw__raw_zlib: []u8 = undefined,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
