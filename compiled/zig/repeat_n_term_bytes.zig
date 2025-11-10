// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const RepeatNTermBytes = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*RepeatNTermBytes) !*RepeatNTermBytes {
        const self = try _arena.allocator().create(RepeatNTermBytes);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const RepeatNTermBytes) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *RepeatNTermBytes) !void {
        self.records1 = try self._allocator().create(_imp_std.ArrayList([]const u8));
        self.records1.* = .empty;
        for (0..2) |i| {
            {
                const _maybe_unused = i;
                _ = _maybe_unused;
            }
            try self.records1.append(self._allocator(), try self._io.readBytesTerm(self._allocator(), 170, false, true, true));
        }
        self.records2 = try self._allocator().create(_imp_std.ArrayList([]const u8));
        self.records2.* = .empty;
        for (0..2) |i| {
            {
                const _maybe_unused = i;
                _ = _maybe_unused;
            }
            try self.records2.append(self._allocator(), try self._io.readBytesTerm(self._allocator(), 170, true, true, true));
        }
        self.records3 = try self._allocator().create(_imp_std.ArrayList([]const u8));
        self.records3.* = .empty;
        for (0..2) |i| {
            {
                const _maybe_unused = i;
                _ = _maybe_unused;
            }
            try self.records3.append(self._allocator(), try self._io.readBytesTerm(self._allocator(), 85, false, false, true));
        }
    }
    records1: *_imp_std.ArrayList([]const u8) = undefined,
    records2: *_imp_std.ArrayList([]const u8) = undefined,
    records3: *_imp_std.ArrayList([]const u8) = undefined,
    _root: ?*RepeatNTermBytes,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
