// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const ProcessRepeatBytes = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*ProcessRepeatBytes) !*ProcessRepeatBytes {
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
    fn _allocator(self: *const ProcessRepeatBytes) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *ProcessRepeatBytes) !void {
        self.bufs = try self._allocator().create(_imp_std.ArrayList([]const u8));
        self.bufs.* = .empty;
        for (0..2) |i| {
            {
                const _maybe_unused = i;
                _ = _maybe_unused;
            }
            const _raw_bufs = try self._io.readBytes(self._allocator(), 5);
            try self.bufs.append(self._allocator(), try _imp_kaitai_struct.KaitaiStream.processXorOne(self._allocator(), _raw_bufs, @as(u8, 158)));
        }
    }
    bufs: *_imp_std.ArrayList([]const u8) = undefined,
    _root: ?*ProcessRepeatBytes,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
