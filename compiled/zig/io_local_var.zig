// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const IoLocalVar = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*IoLocalVar) !*IoLocalVar {
        const self = try _arena.allocator().create(IoLocalVar);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const IoLocalVar) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *IoLocalVar) !void {
        self.skip = try self._io.readBytes(self._allocator(), 20);
        if (@as(*IoLocalVar.Dummy, (try self.messUp()))._io.pos() < 0) {
            self.always_null = try self._io.readU1();
        }
        self.followup = try self._io.readU1();
    }
    pub const Dummy = struct {
        pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*IoLocalVar, _root: ?*IoLocalVar) !*Dummy {
            const self = try _arena.allocator().create(Dummy);
            self.* = .{
                ._arena = _arena,
                ._io = _io,
                ._parent = _parent,
                ._root = _root,
            };
            try self._read();
            return self;
        }
        fn _allocator(self: *const Dummy) _imp_std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *Dummy) !void {
            _ = self;
        }
        _root: ?*IoLocalVar,
        _parent: ?*IoLocalVar,
        _arena: *_imp_std.heap.ArenaAllocator,
        _io: *_imp_kaitai_struct.KaitaiStream,
    };
    pub fn messUp(self: *IoLocalVar) !*anyopaque {
        if (self._m_mess_up) |_v|
            return _v;
        var _v: *anyopaque = undefined;
        const io = self._root.?._io;
        const _pos = io.pos();
        try io.seek(8);
        switch (2) {
            1 => {
                const _raw__m_mess_up = try io.readBytes(self._allocator(), 2);
                const _io__raw__m_mess_up = try self._allocator().create(_imp_kaitai_struct.KaitaiStream);
                _io__raw__m_mess_up.* = _imp_kaitai_struct.KaitaiStream.fromBytes(_raw__m_mess_up);
                _v = try Dummy.create(self._arena, _io__raw__m_mess_up, self, self._root);
            },
            2 => {
                const _raw__m_mess_up = try io.readBytes(self._allocator(), 2);
                const _io__raw__m_mess_up = try self._allocator().create(_imp_kaitai_struct.KaitaiStream);
                _io__raw__m_mess_up.* = _imp_kaitai_struct.KaitaiStream.fromBytes(_raw__m_mess_up);
                _v = try Dummy.create(self._arena, _io__raw__m_mess_up, self, self._root);
            },
            else => {
                _v = try io.readBytes(self._allocator(), 2);
            },
        }
        try io.seek(_pos);
        self._m_mess_up = _v;
        return _v;
    }
    _m_mess_up: ?*anyopaque = null,
    skip: []const u8 = undefined,
    always_null: ?u8 = null,
    followup: u8 = undefined,
    _root: ?*IoLocalVar,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
