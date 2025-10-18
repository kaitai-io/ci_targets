// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const ProcessToUser = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*ProcessToUser) !*ProcessToUser {
        const self = try _arena.allocator().create(ProcessToUser);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const ProcessToUser) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *ProcessToUser) !void {
        self._raw__raw_buf1 = try self._io.readBytes(self._allocator(), 5);
        self._raw_buf1 = kaitai_struct.KaitaiStream.processRotateLeft(self._raw__raw_buf1, 3, 1);
        const _io__raw_buf1 = try self._allocator().create(kaitai_struct.KaitaiStream);
        _io__raw_buf1.* = kaitai_struct.KaitaiStream.fromBytes(self._raw_buf1);
        self.buf1 = try JustStr.create(self._arena, _io__raw_buf1, self, self._root);
    }
    pub const JustStr = struct {
        pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*ProcessToUser, _root: ?*ProcessToUser) !*JustStr {
            const self = try _arena.allocator().create(JustStr);
            self.* = .{
                ._arena = _arena,
                ._io = _io,
                ._parent = _parent,
                ._root = _root,
            };
            try self._read();
            return self;
        }
        fn _allocator(self: *const JustStr) std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *JustStr) !void {
            self.str = kaitai_struct.KaitaiStream.bytesToStr(try self._io.readBytesFull(self._allocator()), "UTF-8");
        }
        str: []u8 = undefined,
        _root: ?*ProcessToUser,
        _parent: ?*ProcessToUser,
        _arena: *std.heap.ArenaAllocator,
        _io: *kaitai_struct.KaitaiStream,
    };
    buf1: *JustStr = undefined,
    _root: ?*ProcessToUser,
    _parent: ?*anyopaque,
    _raw_buf1: []u8 = undefined,
    _raw__raw_buf1: []u8 = undefined,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
