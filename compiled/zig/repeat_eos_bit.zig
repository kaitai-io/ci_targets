// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const RepeatEosBit = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*RepeatEosBit) !*RepeatEosBit {
        const self = try _arena.allocator().create(RepeatEosBit);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const RepeatEosBit) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *RepeatEosBit) !void {
        self.nibbles = try self._allocator().create(std.ArrayList(u64));
        self.nibbles.* = .empty;
        {
            var i: usize = 0;
            while (!try self._io.isEof()) : (i += 1) {
                try self.nibbles.append(self._allocator(), try self._io.readBitsIntBe(4));
            }
        }
    }
    nibbles: *std.ArrayList(u64) = undefined,
    _root: ?*RepeatEosBit,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
