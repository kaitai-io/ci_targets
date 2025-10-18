// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const ProcessRepeatBytes = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*ProcessRepeatBytes) !*ProcessRepeatBytes {
        const self = try _arena.allocator().create(ProcessRepeatBytes);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const ProcessRepeatBytes) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *ProcessRepeatBytes) !void {
        self._raw_bufs = try self._allocator().create(std.ArrayList([]u8));
        self._raw_bufs.* = .empty;
        self.bufs = try self._allocator().create(std.ArrayList([]u8));
        self.bufs.* = .empty;
        for (0..2) |i| {
            {
                const _maybe_unused = i;
                _ = _maybe_unused;
            }
            try self._raw_bufs.append(self._allocator(), try self._io.readBytes(self._allocator(), 5));
            try self.bufs.append(self._allocator(), kaitai_struct.KaitaiStream.processXor(self._raw_bufs.items[i], @as(i8, 158)));
        }
    }
    bufs: *std.ArrayList([]u8) = undefined,
    _root: ?*ProcessRepeatBytes,
    _parent: ?*anyopaque,
    _raw_bufs: *std.ArrayList([]u8) = undefined,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
