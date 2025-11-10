// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const RepeatUntilS4 = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*RepeatUntilS4) !*RepeatUntilS4 {
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
    fn _allocator(self: *const RepeatUntilS4) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *RepeatUntilS4) !void {
        self.entries = try self._allocator().create(_imp_std.ArrayList(i32));
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
        self.afterall = (try _imp_kaitai_struct.KaitaiStream.bytesToStr(self._allocator(), try self._io.readBytesTerm(self._allocator(), 0, false, true, true), "ASCII"));
    }
    entries: *_imp_std.ArrayList(i32) = undefined,
    afterall: []const u8 = undefined,
    _root: ?*RepeatUntilS4,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
