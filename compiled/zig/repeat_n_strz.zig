// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const RepeatNStrz = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*RepeatNStrz) !*RepeatNStrz {
        const self = try _arena.allocator().create(RepeatNStrz);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const RepeatNStrz) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *RepeatNStrz) !void {
        self.qty = try self._io.readU4le();
        self.lines = try self._allocator().create(std.ArrayList([]u8));
        self.lines.* = .empty;
        for (0..self.qty) |i| {
            {
                const _maybe_unused = i;
                _ = _maybe_unused;
            }
            try self.lines.append(self._allocator(), kaitai_struct.KaitaiStream.bytesToStr(try self._io.readBytesTerm(self._allocator(), 0, false, true, true), "UTF-8"));
        }
    }
    qty: u32 = undefined,
    lines: *std.ArrayList([]u8) = undefined,
    _root: ?*RepeatNStrz,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
