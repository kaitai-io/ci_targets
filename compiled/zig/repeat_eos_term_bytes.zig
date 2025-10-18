// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const RepeatEosTermBytes = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*RepeatEosTermBytes) !*RepeatEosTermBytes {
        const self = try _arena.allocator().create(RepeatEosTermBytes);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const RepeatEosTermBytes) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *RepeatEosTermBytes) !void {
        self.records = try self._allocator().create(std.ArrayList([]u8));
        self.records.* = .empty;
        {
            var i: usize = 0;
            while (!try self._io.isEof()) : (i += 1) {
                try self.records.append(self._allocator(), try self._io.readBytesTerm(self._allocator(), 178, true, true, true));
            }
        }
    }
    records: *std.ArrayList([]u8) = undefined,
    _root: ?*RepeatEosTermBytes,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
