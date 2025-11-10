// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const RepeatUntilBytes = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*RepeatUntilBytes) !*RepeatUntilBytes {
        const self = try _arena.allocator().create(RepeatUntilBytes);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const RepeatUntilBytes) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *RepeatUntilBytes) !void {
        self.records = try self._allocator().create(_imp_std.ArrayList([]const u8));
        self.records.* = .empty;
        {
            var i: usize = 0;
            while (true) : (i += 1) {
                const _it = try self._io.readBytes(self._allocator(), 5);
                try self.records.append(self._allocator(), _it);
                if (_it[0] == 170) {
                    break;
                }
            }
        }
    }
    records: *_imp_std.ArrayList([]const u8) = undefined,
    _root: ?*RepeatUntilBytes,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
