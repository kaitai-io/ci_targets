// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const RepeatNStrzDouble = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*RepeatNStrzDouble) !*RepeatNStrzDouble {
        const self = try _arena.allocator().create(RepeatNStrzDouble);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const RepeatNStrzDouble) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *RepeatNStrzDouble) !void {
        self.qty = try self._io.readU4le();
        self.lines1 = try self._allocator().create(_imp_std.ArrayList([]const u8));
        self.lines1.* = .empty;
        for (0..self.qty / 2) |i| {
            {
                const _maybe_unused = i;
                _ = _maybe_unused;
            }
            try self.lines1.append(self._allocator(), (try _imp_kaitai_struct.KaitaiStream.bytesToStr(self._allocator(), try self._io.readBytesTerm(self._allocator(), 0, false, true, true), "UTF-8")));
        }
        self.lines2 = try self._allocator().create(_imp_std.ArrayList([]const u8));
        self.lines2.* = .empty;
        for (0..self.qty / 2) |i| {
            {
                const _maybe_unused = i;
                _ = _maybe_unused;
            }
            try self.lines2.append(self._allocator(), (try _imp_kaitai_struct.KaitaiStream.bytesToStr(self._allocator(), try self._io.readBytesTerm(self._allocator(), 0, false, true, true), "UTF-8")));
        }
    }
    qty: u32 = undefined,
    lines1: *_imp_std.ArrayList([]const u8) = undefined,
    lines2: *_imp_std.ArrayList([]const u8) = undefined,
    _root: ?*RepeatNStrzDouble,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
