// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const Expr0 = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*Expr0) !*Expr0 {
        const self = try _arena.allocator().create(Expr0);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const Expr0) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *Expr0) !void {
        self.len_of_1 = try self._io.readU2le();
    }
    pub fn mustBeAbc123(self: *Expr0) ![]const u8 {
        if (self._m_must_be_abc123) |_v|
            return _v;
        var _v: []const u8 = undefined;
        _v = (try _imp_std.mem.concat(self._allocator(), u8, &[_][]const u8{ "abc", "123" }));
        self._m_must_be_abc123 = _v;
        return _v;
    }
    pub fn mustBeF7(self: *Expr0) !i32 {
        if (self._m_must_be_f7) |_v|
            return _v;
        var _v: i32 = undefined;
        _v = 7 + 240;
        self._m_must_be_f7 = _v;
        return _v;
    }
    _m_must_be_abc123: ?[]const u8 = null,
    _m_must_be_f7: ?i32 = null,
    len_of_1: u16 = undefined,
    _root: ?*Expr0,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
