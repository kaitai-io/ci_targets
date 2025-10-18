// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const ToStringCustom = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*ToStringCustom) !*ToStringCustom {
        const self = try _arena.allocator().create(ToStringCustom);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const ToStringCustom) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *ToStringCustom) !void {
        self.s1 = kaitai_struct.KaitaiStream.bytesToStr(try self._io.readBytesTerm(self._allocator(), 124, false, true, true), "UTF-8");
        self.s2 = kaitai_struct.KaitaiStream.bytesToStr(try self._io.readBytesTerm(self._allocator(), 124, false, true, true), "UTF-8");
    }
    s1: []u8 = undefined,
    s2: []u8 = undefined,
    _root: ?*ToStringCustom,
    _parent: ?*anyopaque,

    @Override
    public String toString() {
        return (try std.mem.concat(self._allocator(), u8, &[_][]const u8{ (try std.mem.concat(self._allocator(), u8, &[_][]const u8{ (try std.mem.concat(self._allocator(), u8, &[_][]const u8{ "s1 = ", self.s1 })), ", s2 = " })), self.s2 }));
    }
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
