// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const TermStrzUtf16V1 = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*TermStrzUtf16V1) !*TermStrzUtf16V1 {
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
    fn _allocator(self: *const TermStrzUtf16V1) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *TermStrzUtf16V1) !void {
        self.s1 = (try _imp_kaitai_struct.KaitaiStream.bytesToStr(self._allocator(), try self._io.readBytesTermMulti(self._allocator(), &[_]u8{ 0, 0 }, false, true, true), "UTF-16LE"));
        self.s2 = (try _imp_kaitai_struct.KaitaiStream.bytesToStr(self._allocator(), try self._io.readBytesTermMulti(self._allocator(), &[_]u8{ 0, 0 }, false, false, true), "UTF-16LE"));
        self.term = try self._io.readU2le();
        self.s3 = (try _imp_kaitai_struct.KaitaiStream.bytesToStr(self._allocator(), try self._io.readBytesTermMulti(self._allocator(), &[_]u8{ 0, 0 }, true, true, true), "UTF-16LE"));
    }
    s1: []const u8 = undefined,
    s2: []const u8 = undefined,
    term: u16 = undefined,
    s3: []const u8 = undefined,
    _root: ?*TermStrzUtf16V1,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
