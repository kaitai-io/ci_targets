// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const RepeatUntilS4 = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*RepeatUntilS4) !*RepeatUntilS4 {
        const self = try _arena.allocator().create(RepeatUntilS4);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const RepeatUntilS4) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *RepeatUntilS4) !void {
        self.entries = try self._allocator().create(std.ArrayList(i32));
        self.entries.* = .empty;
        {
            var i: usize = 0;
            while (true) : (i += 1) {
                const _it = try self._io.readS4le();
                try self.entries.append(self._allocator(), _it);
                if (_it == -1) {
                    break;
                }
            }
        }
        self.afterall = kaitai_struct.KaitaiStream.bytesToStr(try self._io.readBytesTerm(self._allocator(), 0, false, true, true), "ASCII");
    }
    entries: *std.ArrayList(i32) = undefined,
    afterall: []u8 = undefined,
    _root: ?*RepeatUntilS4,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
