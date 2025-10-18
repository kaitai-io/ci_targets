// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const RepeatEosU4 = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*RepeatEosU4) !*RepeatEosU4 {
        const self = try _arena.allocator().create(RepeatEosU4);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const RepeatEosU4) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *RepeatEosU4) !void {
        self.numbers = try self._allocator().create(std.ArrayList(u32));
        self.numbers.* = .empty;
        {
            var i: usize = 0;
            while (!try self._io.isEof()) : (i += 1) {
                try self.numbers.append(self._allocator(), try self._io.readU4le());
            }
        }
    }
    numbers: *std.ArrayList(u32) = undefined,
    _root: ?*RepeatEosU4,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
