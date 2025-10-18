// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const CastNested = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*CastNested) !*CastNested {
        const self = try _arena.allocator().create(CastNested);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const CastNested) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *CastNested) !void {
        self.opcodes = try self._allocator().create(std.ArrayList(*Opcode));
        self.opcodes.* = .empty;
        {
            var i: usize = 0;
            while (!try self._io.isEof()) : (i += 1) {
                try self.opcodes.append(self._allocator(), try Opcode.create(self._arena, self._io, self, self._root));
            }
        }
    }
    pub const Opcode = struct {
        pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*CastNested, _root: ?*CastNested) !*Opcode {
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
        fn _allocator(self: *const Opcode) std.mem.Allocator {
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
        pub const Intval = struct {
            pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*CastNested.Opcode, _root: ?*CastNested) !*Intval {
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
            fn _allocator(self: *const Intval) std.mem.Allocator {
                return self._arena.allocator();
            }
            fn _read(self: *Intval) !void {
                self.value = try self._io.readU1();
            }
            value: u8 = undefined,
            _root: ?*CastNested,
            _parent: ?*CastNested.Opcode,
            _arena: *std.heap.ArenaAllocator,
            _io: *kaitai_struct.KaitaiStream,
        };
        pub const Strval = struct {
            pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*CastNested.Opcode, _root: ?*CastNested) !*Strval {
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
            fn _allocator(self: *const Strval) std.mem.Allocator {
                return self._arena.allocator();
            }
            fn _read(self: *Strval) !void {
                self.value = kaitai_struct.KaitaiStream.bytesToStr(try self._io.readBytesTerm(self._allocator(), 0, false, true, true), "ASCII");
            }
            value: []u8 = undefined,
            _root: ?*CastNested,
            _parent: ?*CastNested.Opcode,
            _arena: *std.heap.ArenaAllocator,
            _io: *kaitai_struct.KaitaiStream,
        };
        code: u8 = undefined,
        body: ?*anyopaque = null,
        _root: ?*CastNested,
        _parent: ?*CastNested,
        _arena: *std.heap.ArenaAllocator,
        _io: *kaitai_struct.KaitaiStream,
    };
    pub fn opcodes0Str(self: *CastNested) !*CastNested.Opcode.Strval {
        if (self._m_opcodes_0_str) |_v|
            return _v;
        var _v: *CastNested.Opcode.Strval = undefined;
        _v = @as(*CastNested.Opcode.Strval, self.opcodes.items[0].body);
        self._m_opcodes_0_str = _v;
        return _v;
    }
    pub fn opcodes0StrValue(self: *CastNested) ![]u8 {
        if (self._m_opcodes_0_str_value) |_v|
            return _v;
        var _v: []u8 = undefined;
        _v = @as(*CastNested.Opcode.Strval, self.opcodes.items[0].body).value;
        self._m_opcodes_0_str_value = _v;
        return _v;
    }
    pub fn opcodes1Int(self: *CastNested) !*CastNested.Opcode.Intval {
        if (self._m_opcodes_1_int) |_v|
            return _v;
        var _v: *CastNested.Opcode.Intval = undefined;
        _v = @as(*CastNested.Opcode.Intval, self.opcodes.items[1].body);
        self._m_opcodes_1_int = _v;
        return _v;
    }
    pub fn opcodes1IntValue(self: *CastNested) !u8 {
        if (self._m_opcodes_1_int_value) |_v|
            return _v;
        var _v: u8 = undefined;
        _v = @as(*CastNested.Opcode.Intval, self.opcodes.items[1].body).value;
        self._m_opcodes_1_int_value = _v;
        return _v;
    }
    _m_opcodes_0_str: ?*CastNested.Opcode.Strval = null,
    _m_opcodes_0_str_value: ?[]u8 = null,
    _m_opcodes_1_int: ?*CastNested.Opcode.Intval = null,
    _m_opcodes_1_int_value: ?u8 = null,
    opcodes: *std.ArrayList(*Opcode) = undefined,
    _root: ?*CastNested,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
