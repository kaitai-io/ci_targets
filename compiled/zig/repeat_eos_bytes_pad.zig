// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const RepeatEosBytesPad = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*RepeatEosBytesPad) !*RepeatEosBytesPad {
        const self = try _arena.allocator().create(RepeatEosBytesPad);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const RepeatEosBytesPad) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *RepeatEosBytesPad) !void {
        self.records = try self._allocator().create(_imp_std.ArrayList([]const u8));
        self.records.* = .empty;
        {
            var i: usize = 0;
            while (!try self._io.isEof()) : (i += 1) {
                try self.records.append(self._allocator(), _imp_kaitai_struct.KaitaiStream.bytesStripRight(try self._io.readBytes(self._allocator(), 5), 170));
            }
        }
    }
    records: *_imp_std.ArrayList([]const u8) = undefined,
    _root: ?*RepeatEosBytesPad,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
