// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const RepeatNBytesPadTerm = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*RepeatNBytesPadTerm) !*RepeatNBytesPadTerm {
        const self = try _arena.allocator().create(RepeatNBytesPadTerm);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const RepeatNBytesPadTerm) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *RepeatNBytesPadTerm) !void {
        self.records = try self._allocator().create(_imp_std.ArrayList([]const u8));
        self.records.* = .empty;
        for (0..3) |i| {
            {
                const _maybe_unused = i;
                _ = _maybe_unused;
            }
            try self.records.append(self._allocator(), _imp_kaitai_struct.KaitaiStream.bytesTerminate(_imp_kaitai_struct.KaitaiStream.bytesStripRight(try self._io.readBytes(self._allocator(), 5), 170), 85, true));
        }
    }
    records: *_imp_std.ArrayList([]const u8) = undefined,
    _root: ?*RepeatNBytesPadTerm,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
