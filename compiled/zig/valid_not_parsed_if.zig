// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const ValidNotParsedIf = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*ValidNotParsedIf) !*ValidNotParsedIf {
        const self = try _arena.allocator().create(ValidNotParsedIf);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const ValidNotParsedIf) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *ValidNotParsedIf) !void {
        if (false) {
            self.not_parsed = try self._io.readU1();
            if (!(self.not_parsed == 42)) {
                return error.ValidationNotEqualError;
            }
        }
        if (true) {
            self.parsed = try self._io.readU1();
            if (!(self.parsed == 80)) {
                return error.ValidationNotEqualError;
            }
        }
    }
    not_parsed: ?u8 = null,
    parsed: ?u8 = null,
    _root: ?*ValidNotParsedIf,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
