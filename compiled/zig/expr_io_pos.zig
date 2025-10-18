// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const ExprIoPos = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*ExprIoPos) !*ExprIoPos {
        const self = try _arena.allocator().create(ExprIoPos);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const ExprIoPos) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *ExprIoPos) !void {
        self._raw_substream1 = try self._io.readBytes(self._allocator(), 16);
        const _io__raw_substream1 = try self._allocator().create(kaitai_struct.KaitaiStream);
        _io__raw_substream1.* = kaitai_struct.KaitaiStream.fromBytes(self._raw_substream1);
        self.substream1 = try AllPlusNumber.create(self._arena, _io__raw_substream1, self, self._root);
        self._raw_substream2 = try self._io.readBytes(self._allocator(), 14);
        const _io__raw_substream2 = try self._allocator().create(kaitai_struct.KaitaiStream);
        _io__raw_substream2.* = kaitai_struct.KaitaiStream.fromBytes(self._raw_substream2);
        self.substream2 = try AllPlusNumber.create(self._arena, _io__raw_substream2, self, self._root);
    }
    pub const AllPlusNumber = struct {
        pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*ExprIoPos, _root: ?*ExprIoPos) !*AllPlusNumber {
            const self = try _arena.allocator().create(AllPlusNumber);
            self.* = .{
                ._arena = _arena,
                ._io = _io,
                ._parent = _parent,
                ._root = _root,
            };
            try self._read();
            return self;
        }
        fn _allocator(self: *const AllPlusNumber) std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *AllPlusNumber) !void {
            self.my_str = kaitai_struct.KaitaiStream.bytesToStr(try self._io.readBytesTerm(self._allocator(), 0, false, true, true), "UTF-8");
            self.body = try self._io.readBytes(self._allocator(), ((try self._io.size()) - self._io.pos()) - 2);
            self.number = try self._io.readU2le();
        }
        my_str: []u8 = undefined,
        body: []u8 = undefined,
        number: u16 = undefined,
        _root: ?*ExprIoPos,
        _parent: ?*ExprIoPos,
        _arena: *std.heap.ArenaAllocator,
        _io: *kaitai_struct.KaitaiStream,
    };
    substream1: *AllPlusNumber = undefined,
    substream2: *AllPlusNumber = undefined,
    _root: ?*ExprIoPos,
    _parent: ?*anyopaque,
    _raw_substream1: []u8 = undefined,
    _raw_substream2: []u8 = undefined,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
