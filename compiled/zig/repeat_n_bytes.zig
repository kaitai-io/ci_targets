// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const RepeatNBytes = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*RepeatNBytes) !*RepeatNBytes {
        const self = try _arena.allocator().create(RepeatNBytes);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const RepeatNBytes) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *RepeatNBytes) !void {
        self.records = try self._allocator().create(std.ArrayList([]u8));
        self.records.* = .empty;
        for (0..3) |i| {
            {
                const _maybe_unused = i;
                _ = _maybe_unused;
            }
            try self.records.append(self._allocator(), try self._io.readBytes(self._allocator(), 5));
        }
    }
    records: *std.ArrayList([]u8) = undefined,
    _root: ?*RepeatNBytes,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
