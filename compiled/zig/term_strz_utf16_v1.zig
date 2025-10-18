// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const TermStrzUtf16V1 = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*TermStrzUtf16V1) !*TermStrzUtf16V1 {
        const self = try _arena.allocator().create(TermStrzUtf16V1);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const TermStrzUtf16V1) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *TermStrzUtf16V1) !void {
        self.s1 = kaitai_struct.KaitaiStream.bytesToStr(try self._io.readBytesTermMulti(self._allocator(), &[_]u8{ 0, 0 }, false, true, true), "UTF-16LE");
        self.s2 = kaitai_struct.KaitaiStream.bytesToStr(try self._io.readBytesTermMulti(self._allocator(), &[_]u8{ 0, 0 }, false, false, true), "UTF-16LE");
        self.term = try self._io.readU2le();
        self.s3 = kaitai_struct.KaitaiStream.bytesToStr(try self._io.readBytesTermMulti(self._allocator(), &[_]u8{ 0, 0 }, true, true, true), "UTF-16LE");
    }
    s1: []u8 = undefined,
    s2: []u8 = undefined,
    term: u16 = undefined,
    s3: []u8 = undefined,
    _root: ?*TermStrzUtf16V1,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
