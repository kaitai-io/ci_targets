// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const RepeatUntilTermBytes = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*RepeatUntilTermBytes) !*RepeatUntilTermBytes {
        const self = try _arena.allocator().create(RepeatUntilTermBytes);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const RepeatUntilTermBytes) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *RepeatUntilTermBytes) !void {
        self.records1 = try self._allocator().create(_imp_std.ArrayList([]const u8));
        self.records1.* = .empty;
        {
            var i: usize = 0;
            while (true) : (i += 1) {
                const _it = try self._io.readBytesTerm(self._allocator(), 170, false, true, true);
                try self.records1.append(self._allocator(), _it);
                if (_it.len == 0) {
                    break;
                }
            }
        }
        self.records2 = try self._allocator().create(_imp_std.ArrayList([]const u8));
        self.records2.* = .empty;
        {
            var i: usize = 0;
            while (true) : (i += 1) {
                const _it = try self._io.readBytesTerm(self._allocator(), 170, true, true, true);
                try self.records2.append(self._allocator(), _it);
                if (!_imp_std.mem.eql(u8, _it, &[_]u8{ 170 })) {
                    break;
                }
            }
        }
        self.records3 = try self._allocator().create(_imp_std.ArrayList([]const u8));
        self.records3.* = .empty;
        {
            var i: usize = 0;
            while (true) : (i += 1) {
                const _it = try self._io.readBytesTerm(self._allocator(), 85, false, false, true);
                try self.records3.append(self._allocator(), _it);
                if (_imp_std.mem.eql(u8, _it, self.records1.items[self.records1.items.len - 1])) {
                    break;
                }
            }
        }
    }
    records1: *_imp_std.ArrayList([]const u8) = undefined,
    records2: *_imp_std.ArrayList([]const u8) = undefined,
    records3: *_imp_std.ArrayList([]const u8) = undefined,
    _root: ?*RepeatUntilTermBytes,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
