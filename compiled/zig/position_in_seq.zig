// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const PositionInSeq = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*PositionInSeq) !*PositionInSeq {
        const self = try _arena.allocator().create(PositionInSeq);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const PositionInSeq) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *PositionInSeq) !void {
        self.numbers = try self._allocator().create(_imp_std.ArrayList(u8));
        self.numbers.* = .empty;
        for (0..(try self.header()).qty_numbers) |i| {
            {
                const _maybe_unused = i;
                _ = _maybe_unused;
            }
            try self.numbers.append(self._allocator(), try self._io.readU1());
        }
    }
    pub const HeaderObj = struct {
        pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*PositionInSeq, _root: ?*PositionInSeq) !*HeaderObj {
            const self = try _arena.allocator().create(HeaderObj);
            self.* = .{
                ._arena = _arena,
                ._io = _io,
                ._parent = _parent,
                ._root = _root,
            };
            try self._read();
            return self;
        }
        fn _allocator(self: *const HeaderObj) _imp_std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *HeaderObj) !void {
            self.qty_numbers = try self._io.readU4le();
        }
        qty_numbers: u32 = undefined,
        _root: ?*PositionInSeq,
        _parent: ?*PositionInSeq,
        _arena: *_imp_std.heap.ArenaAllocator,
        _io: *_imp_kaitai_struct.KaitaiStream,
    };
    pub fn header(self: *PositionInSeq) !*HeaderObj {
        if (self._m_header) |_v|
            return _v;
        var _v: *HeaderObj = undefined;
        const _pos = self._io.pos();
        try self._io.seek(16);
        _v = try HeaderObj.create(self._arena, self._io, self, self._root);
        try self._io.seek(_pos);
        self._m_header = _v;
        return _v;
    }
    _m_header: ?*HeaderObj = null,
    numbers: *_imp_std.ArrayList(u8) = undefined,
    _root: ?*PositionInSeq,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
