// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const RepeatEosBitsB1 = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*RepeatEosBitsB1) !*RepeatEosBitsB1 {
        const self = try _arena.allocator().create(RepeatEosBitsB1);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const RepeatEosBitsB1) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *RepeatEosBitsB1) !void {
        self.bits = try self._allocator().create(_imp_std.ArrayList(bool));
        self.bits.* = .empty;
        {
            var i: usize = 0;
            while (!try self._io.isEof()) : (i += 1) {
                try self.bits.append(self._allocator(), try self._io.readBitsIntBe(1) != 0);
            }
        }
    }
    bits: *_imp_std.ArrayList(bool) = undefined,
    _root: ?*RepeatEosBitsB1,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
