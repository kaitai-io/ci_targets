// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const RepeatUntilBytesPadTerm = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*RepeatUntilBytesPadTerm) !*RepeatUntilBytesPadTerm {
        const self = try _arena.allocator().create(RepeatUntilBytesPadTerm);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const RepeatUntilBytesPadTerm) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *RepeatUntilBytesPadTerm) !void {
        self.records = try self._allocator().create(std.ArrayList([]u8));
        self.records.* = .empty;
        {
            var i: usize = 0;
            while (true) : (i += 1) {
                const _it = kaitai_struct.KaitaiStream.bytesTerminate(kaitai_struct.KaitaiStream.bytesStripRight(try self._io.readBytes(self._allocator(), 5), 170), 85, true);
                try self.records.append(self._allocator(), _it);
                if (std.mem.eql(u8, _it, &[_]u8{ 170, 85 })) {
                    break;
                }
            }
        }
    }
    records: *std.ArrayList([]u8) = undefined,
    _root: ?*RepeatUntilBytesPadTerm,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
