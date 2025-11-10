// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const SwitchIntegers = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*SwitchIntegers) !*SwitchIntegers {
        const self = try _arena.allocator().create(SwitchIntegers);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const SwitchIntegers) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *SwitchIntegers) !void {
        self.opcodes = try self._allocator().create(_imp_std.ArrayList(*Opcode));
        self.opcodes.* = .empty;
        {
            var i: usize = 0;
            while (!try self._io.isEof()) : (i += 1) {
                try self.opcodes.append(self._allocator(), try Opcode.create(self._arena, self._io, self, self._root));
            }
        }
    }
    pub const Opcode = struct {
        pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*SwitchIntegers, _root: ?*SwitchIntegers) !*Opcode {
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
                1 => {
                    self.body = try self._io.readU1();
                },
                2 => {
                    self.body = try self._io.readU2le();
                },
                4 => {
                    self.body = try self._io.readU4le();
                },
                8 => {
                    self.body = try self._io.readU8le();
                },
                else => {
                },
            }
        }
        code: u8 = undefined,
        body: ?u64 = null,
        _root: ?*SwitchIntegers,
        _parent: ?*SwitchIntegers,
        _arena: *_imp_std.heap.ArenaAllocator,
        _io: *_imp_kaitai_struct.KaitaiStream,
    };
    opcodes: *_imp_std.ArrayList(*Opcode) = undefined,
    _root: ?*SwitchIntegers,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
