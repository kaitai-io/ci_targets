// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const SwitchManualStrElse = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*SwitchManualStrElse) !*SwitchManualStrElse {
        const self = try _arena.allocator().create(SwitchManualStrElse);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const SwitchManualStrElse) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *SwitchManualStrElse) !void {
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
        pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*SwitchManualStrElse, _root: ?*SwitchManualStrElse) !*Opcode {
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
            self.code = kaitai_struct.KaitaiStream.bytesToStr(try self._io.readBytes(self._allocator(), 1), "ASCII");
            {
                const _on = self.code;
                if (std.mem.eql(u8, _on, "I")) {
                    self.body = try Intval.create(self._arena, self._io, self, self._root);
                }
                else if (std.mem.eql(u8, _on, "S")) {
                    self.body = try Strval.create(self._arena, self._io, self, self._root);
                }
                else {
                    self.body = try Noneval.create(self._arena, self._io, self, self._root);
                }
            }
        }
        pub const Intval = struct {
            pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*SwitchManualStrElse.Opcode, _root: ?*SwitchManualStrElse) !*Intval {
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
            _root: ?*SwitchManualStrElse,
            _parent: ?*SwitchManualStrElse.Opcode,
            _arena: *std.heap.ArenaAllocator,
            _io: *kaitai_struct.KaitaiStream,
        };
        pub const Noneval = struct {
            pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*SwitchManualStrElse.Opcode, _root: ?*SwitchManualStrElse) !*Noneval {
                const self = try _arena.allocator().create(Noneval);
                self.* = .{
                    ._arena = _arena,
                    ._io = _io,
                    ._parent = _parent,
                    ._root = _root,
                };
                try self._read();
                return self;
            }
            fn _allocator(self: *const Noneval) std.mem.Allocator {
                return self._arena.allocator();
            }
            fn _read(self: *Noneval) !void {
                self.filler = try self._io.readU4le();
            }
            filler: u32 = undefined,
            _root: ?*SwitchManualStrElse,
            _parent: ?*SwitchManualStrElse.Opcode,
            _arena: *std.heap.ArenaAllocator,
            _io: *kaitai_struct.KaitaiStream,
        };
        pub const Strval = struct {
            pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*SwitchManualStrElse.Opcode, _root: ?*SwitchManualStrElse) !*Strval {
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
            _root: ?*SwitchManualStrElse,
            _parent: ?*SwitchManualStrElse.Opcode,
            _arena: *std.heap.ArenaAllocator,
            _io: *kaitai_struct.KaitaiStream,
        };
        code: []u8 = undefined,
        body: *anyopaque = undefined,
        _root: ?*SwitchManualStrElse,
        _parent: ?*SwitchManualStrElse,
        _arena: *std.heap.ArenaAllocator,
        _io: *kaitai_struct.KaitaiStream,
    };
    opcodes: *std.ArrayList(*Opcode) = undefined,
    _root: ?*SwitchManualStrElse,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
