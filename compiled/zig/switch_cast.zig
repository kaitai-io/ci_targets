// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const SwitchCast = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*SwitchCast) !*SwitchCast {
        const self = try _arena.allocator().create(SwitchCast);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const SwitchCast) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *SwitchCast) !void {
        self.opcodes = try self._allocator().create(_imp_std.ArrayList(*Opcode));
        self.opcodes.* = .empty;
        {
            var i: usize = 0;
            while (!try self._io.isEof()) : (i += 1) {
                try self.opcodes.append(self._allocator(), try Opcode.create(self._arena, self._io, self, self._root));
            }
        }
    }
    pub const Intval = struct {
        pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*SwitchCast.Opcode, _root: ?*SwitchCast) !*Intval {
            const self = try _arena.allocator().create(Intval);
            self.* = .{
                ._arena = _arena,
                ._io = _io,
                ._parent = _parent,
                ._root = _root,
            };
            try self._read();
            return self;
        }
        fn _allocator(self: *const Intval) _imp_std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *Intval) !void {
            self.value = try self._io.readU1();
        }
        value: u8 = undefined,
        _root: ?*SwitchCast,
        _parent: ?*SwitchCast.Opcode,
        _arena: *_imp_std.heap.ArenaAllocator,
        _io: *_imp_kaitai_struct.KaitaiStream,
    };
    pub const Opcode = struct {
        pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*SwitchCast, _root: ?*SwitchCast) !*Opcode {
            const self = try _arena.allocator().create(Opcode);
            self.* = .{
                ._arena = _arena,
                ._io = _io,
                ._parent = _parent,
                ._root = _root,
            };
            try self._read();
            return self;
        }
        fn _allocator(self: *const Opcode) _imp_std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *Opcode) !void {
            self.code = try self._io.readU1();
            switch (self.code) {
                73 => {
                    self.body = try Intval.create(self._arena, self._io, self, self._root);
                },
                83 => {
                    self.body = try Strval.create(self._arena, self._io, self, self._root);
                },
                else => {
                },
            }
        }
        code: u8 = undefined,
        body: ?*anyopaque = null,
        _root: ?*SwitchCast,
        _parent: ?*SwitchCast,
        _arena: *_imp_std.heap.ArenaAllocator,
        _io: *_imp_kaitai_struct.KaitaiStream,
    };
    pub const Strval = struct {
        pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*SwitchCast.Opcode, _root: ?*SwitchCast) !*Strval {
            const self = try _arena.allocator().create(Strval);
            self.* = .{
                ._arena = _arena,
                ._io = _io,
                ._parent = _parent,
                ._root = _root,
            };
            try self._read();
            return self;
        }
        fn _allocator(self: *const Strval) _imp_std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *Strval) !void {
            self.value = (try _imp_kaitai_struct.KaitaiStream.bytesToStr(self._allocator(), try self._io.readBytesTerm(self._allocator(), 0, false, true, true), "ASCII"));
        }
        value: []const u8 = undefined,
        _root: ?*SwitchCast,
        _parent: ?*SwitchCast.Opcode,
        _arena: *_imp_std.heap.ArenaAllocator,
        _io: *_imp_kaitai_struct.KaitaiStream,
    };
    pub fn errCast(self: *SwitchCast) !*SwitchCast.Strval {
        if (self._m_err_cast) |_v|
            return _v;
        var _v: *SwitchCast.Strval = undefined;
        _v = @as(*SwitchCast.Strval, self.opcodes.items[2].body);
        self._m_err_cast = _v;
        return _v;
    }
    pub fn firstObj(self: *SwitchCast) !*SwitchCast.Strval {
        if (self._m_first_obj) |_v|
            return _v;
        var _v: *SwitchCast.Strval = undefined;
        _v = @as(*SwitchCast.Strval, self.opcodes.items[0].body);
        self._m_first_obj = _v;
        return _v;
    }
    pub fn secondVal(self: *SwitchCast) !u8 {
        if (self._m_second_val) |_v|
            return _v;
        var _v: u8 = undefined;
        _v = @as(*SwitchCast.Intval, self.opcodes.items[1].body).value;
        self._m_second_val = _v;
        return _v;
    }
    _m_err_cast: ?*SwitchCast.Strval = null,
    _m_first_obj: ?*SwitchCast.Strval = null,
    _m_second_val: ?u8 = null,
    opcodes: *_imp_std.ArrayList(*Opcode) = undefined,
    _root: ?*SwitchCast,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
