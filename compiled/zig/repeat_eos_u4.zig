// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const RepeatEosU4 = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*RepeatEosU4) !*RepeatEosU4 {
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
    fn _allocator(self: *const RepeatEosU4) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *RepeatEosU4) !void {
        self.numbers = try self._allocator().create(_imp_std.ArrayList(u32));
        self.numbers.* = .empty;
        {
            var i: usize = 0;
            while (!try self._io.isEof()) : (i += 1) {
                try self.numbers.append(self._allocator(), try self._io.readU4le());
            }
        }
    }
    numbers: *_imp_std.ArrayList(u32) = undefined,
    _root: ?*RepeatEosU4,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
