// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const SwitchManualEnumInvalid = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*SwitchManualEnumInvalid) !*SwitchManualEnumInvalid {
        const self = try _arena.allocator().create(SwitchManualEnumInvalid);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const SwitchManualEnumInvalid) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *SwitchManualEnumInvalid) !void {
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
        pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*SwitchManualEnumInvalid, _root: ?*SwitchManualEnumInvalid) !*Opcode {
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
            self.code = @as(SwitchManualEnumInvalid.Opcode.CodeEnum, @enumFromInt(try self._io.readU1()));
            switch (self.code) {
                SwitchManualEnumInvalid.Opcode.CodeEnum.intval => {
                    self.body = try Intval.create(self._arena, self._io, self, self._root);
                },
                SwitchManualEnumInvalid.Opcode.CodeEnum.strval => {
                    self.body = try Strval.create(self._arena, self._io, self, self._root);
                },
                else => {
                },
            }
        }
        pub const Intval = struct {
            pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*SwitchManualEnumInvalid.Opcode, _root: ?*SwitchManualEnumInvalid) !*Intval {
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
            _root: ?*SwitchManualEnumInvalid,
            _parent: ?*SwitchManualEnumInvalid.Opcode,
            _arena: *std.heap.ArenaAllocator,
            _io: *kaitai_struct.KaitaiStream,
        };
        pub const Strval = struct {
            pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*SwitchManualEnumInvalid.Opcode, _root: ?*SwitchManualEnumInvalid) !*Strval {
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
            _root: ?*SwitchManualEnumInvalid,
            _parent: ?*SwitchManualEnumInvalid.Opcode,
            _arena: *std.heap.ArenaAllocator,
            _io: *kaitai_struct.KaitaiStream,
        };
        code: CodeEnum = undefined,
        body: ?*anyopaque = null,
        _root: ?*SwitchManualEnumInvalid,
        _parent: ?*SwitchManualEnumInvalid,
        _arena: *std.heap.ArenaAllocator,
        _io: *kaitai_struct.KaitaiStream,
    };
    opcodes: *std.ArrayList(*Opcode) = undefined,
    _root: ?*SwitchManualEnumInvalid,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
