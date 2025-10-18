// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const SwitchManualEnumInvalidElse = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*SwitchManualEnumInvalidElse) !*SwitchManualEnumInvalidElse {
        const self = try _arena.allocator().create(SwitchManualEnumInvalidElse);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const SwitchManualEnumInvalidElse) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *SwitchManualEnumInvalidElse) !void {
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
        pub const CodeEnum = enum(i32) {
            intval = 73,
            strval = 83,
            _,
        };
        pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*SwitchManualEnumInvalidElse, _root: ?*SwitchManualEnumInvalidElse) !*Opcode {
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
            self.code = @as(SwitchManualEnumInvalidElse.Opcode.CodeEnum, @enumFromInt(try self._io.readU1()));
            switch (self.code) {
                SwitchManualEnumInvalidElse.Opcode.CodeEnum.intval => {
                    self.body = try Intval.create(self._arena, self._io, self, self._root);
                },
                SwitchManualEnumInvalidElse.Opcode.CodeEnum.strval => {
                    self.body = try Strval.create(self._arena, self._io, self, self._root);
                },
                else => {
                    self.body = try Defval.create(self._arena, self._io, self, self._root);
                },
            }
        }
        pub const Defval = struct {
            pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*SwitchManualEnumInvalidElse.Opcode, _root: ?*SwitchManualEnumInvalidElse) !*Defval {
                const self = try _arena.allocator().create(Defval);
                self.* = .{
                    ._arena = _arena,
                    ._io = _io,
                    ._parent = _parent,
                    ._root = _root,
                };
                try self._read();
                return self;
            }
            fn _allocator(self: *const Defval) std.mem.Allocator {
                return self._arena.allocator();
            }
            fn _read(self: *Defval) !void {
                _ = self;
            }
            pub fn value(self: *Defval) !i8 {
                if (self._m_value) |_v|
                    return _v;
                var _v: i8 = undefined;
                _v = 123;
                self._m_value = _v;
                return _v;
            }
            _m_value: ?i8 = null,
            _root: ?*SwitchManualEnumInvalidElse,
            _parent: ?*SwitchManualEnumInvalidElse.Opcode,
            _arena: *std.heap.ArenaAllocator,
            _io: *kaitai_struct.KaitaiStream,
        };
        pub const Intval = struct {
            pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*SwitchManualEnumInvalidElse.Opcode, _root: ?*SwitchManualEnumInvalidElse) !*Intval {
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
            _root: ?*SwitchManualEnumInvalidElse,
            _parent: ?*SwitchManualEnumInvalidElse.Opcode,
            _arena: *std.heap.ArenaAllocator,
            _io: *kaitai_struct.KaitaiStream,
        };
        pub const Strval = struct {
            pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*SwitchManualEnumInvalidElse.Opcode, _root: ?*SwitchManualEnumInvalidElse) !*Strval {
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
            _root: ?*SwitchManualEnumInvalidElse,
            _parent: ?*SwitchManualEnumInvalidElse.Opcode,
            _arena: *std.heap.ArenaAllocator,
            _io: *kaitai_struct.KaitaiStream,
        };
        code: CodeEnum = undefined,
        body: *anyopaque = undefined,
        _root: ?*SwitchManualEnumInvalidElse,
        _parent: ?*SwitchManualEnumInvalidElse,
        _arena: *std.heap.ArenaAllocator,
        _io: *kaitai_struct.KaitaiStream,
    };
    opcodes: *std.ArrayList(*Opcode) = undefined,
    _root: ?*SwitchManualEnumInvalidElse,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
