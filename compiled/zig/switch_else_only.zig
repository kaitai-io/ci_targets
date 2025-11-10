// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const SwitchElseOnly = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*SwitchElseOnly) !*SwitchElseOnly {
        const self = try _arena.allocator().create(SwitchElseOnly);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const SwitchElseOnly) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *SwitchElseOnly) !void {
        self.opcode = try self._io.readS1();
        switch (self.opcode) {
            else => {
                self.prim_byte = try self._io.readS1();
            },
        }
        self.indicator = try self._io.readBytes(self._allocator(), 4);
        self.ut = try Data.create(self._arena, self._io, self, self._root);
    }
    pub const Data = struct {
        pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*SwitchElseOnly, _root: ?*SwitchElseOnly) !*Data {
            const self = try _arena.allocator().create(Data);
            self.* = .{
                ._arena = _arena,
                ._io = _io,
                ._parent = _parent,
                ._root = _root,
            };
            try self._read();
            return self;
        }
        fn _allocator(self: *const Data) _imp_std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *Data) !void {
            self.value = try self._io.readBytes(self._allocator(), 4);
        }
        value: []const u8 = undefined,
        _root: ?*SwitchElseOnly,
        _parent: ?*SwitchElseOnly,
        _arena: *_imp_std.heap.ArenaAllocator,
        _io: *_imp_kaitai_struct.KaitaiStream,
    };
    opcode: i8 = undefined,
    prim_byte: i8 = undefined,
    indicator: []const u8 = undefined,
    ut: *Data = undefined,
    _root: ?*SwitchElseOnly,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
