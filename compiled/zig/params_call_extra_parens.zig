// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const ParamsCallExtraParens = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*ParamsCallExtraParens) !*ParamsCallExtraParens {
        const self = try _arena.allocator().create(ParamsCallExtraParens);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const ParamsCallExtraParens) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *ParamsCallExtraParens) !void {
        self.buf1 = try MyStr1.create(self._arena, self._io, self, self._root, 5);
    }
    pub const MyStr1 = struct {
        pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*ParamsCallExtraParens, _root: ?*ParamsCallExtraParens, len: u32) !*MyStr1 {
            const self = try _arena.allocator().create(MyStr1);
            self.* = .{
                ._arena = _arena,
                ._io = _io,
                ._parent = _parent,
                ._root = _root,
            };
            self.len = len;
            try self._read();
            return self;
        }
        fn _allocator(self: *const MyStr1) std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *MyStr1) !void {
            self.body = kaitai_struct.KaitaiStream.bytesToStr(try self._io.readBytes(self._allocator(), self.len), "UTF-8");
        }
        body: []u8 = undefined,
        len: u32 = undefined,
        _root: ?*ParamsCallExtraParens,
        _parent: ?*ParamsCallExtraParens,
        _arena: *std.heap.ArenaAllocator,
        _io: *kaitai_struct.KaitaiStream,
    };
    buf1: *MyStr1 = undefined,
    _root: ?*ParamsCallExtraParens,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
