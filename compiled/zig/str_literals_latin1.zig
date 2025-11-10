// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const StrLiteralsLatin1 = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*StrLiteralsLatin1) !*StrLiteralsLatin1 {
        const self = try _arena.allocator().create(StrLiteralsLatin1);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const StrLiteralsLatin1) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *StrLiteralsLatin1) !void {
        self.len_parsed = try self._io.readU2le();
        self.parsed = (try _imp_kaitai_struct.KaitaiStream.bytesToStr(self._allocator(), try self._io.readBytes(self._allocator(), self.len_parsed), "UTF-8"));
    }
    pub fn parsedEqLiteral(self: *StrLiteralsLatin1) !bool {
        if (self._m_parsed_eq_literal) |_v|
            return _v;
        var _v: bool = undefined;
        _v = _imp_std.mem.eql(u8, self.parsed, "\u{00a3}");
        self._m_parsed_eq_literal = _v;
        return _v;
    }
    _m_parsed_eq_literal: ?bool = null,
    len_parsed: u16 = undefined,
    parsed: []const u8 = undefined,
    _root: ?*StrLiteralsLatin1,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
