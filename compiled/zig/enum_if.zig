// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const EnumIf = struct {
    pub const Opcodes = enum(i32) {
        a_string = 83,
        a_tuple = 84,
        _,
    };
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*EnumIf) !*EnumIf {
        const self = try _arena.allocator().create(EnumIf);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const EnumIf) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *EnumIf) !void {
        self.op1 = try Operation.create(self._arena, self._io, self, self._root);
        self.op2 = try Operation.create(self._arena, self._io, self, self._root);
        self.op3 = try Operation.create(self._arena, self._io, self, self._root);
    }
    pub const ArgStr = struct {
        pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*EnumIf.Operation, _root: ?*EnumIf) !*ArgStr {
            const self = try _arena.allocator().create(ArgStr);
            self.* = .{
                ._arena = _arena,
                ._io = _io,
                ._parent = _parent,
                ._root = _root,
            };
            try self._read();
            return self;
        }
        fn _allocator(self: *const ArgStr) std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *ArgStr) !void {
            self.len = try self._io.readU1();
            self.str = kaitai_struct.KaitaiStream.bytesToStr(try self._io.readBytes(self._allocator(), self.len), "UTF-8");
        }
        len: u8 = undefined,
        str: []u8 = undefined,
        _root: ?*EnumIf,
        _parent: ?*EnumIf.Operation,
        _arena: *std.heap.ArenaAllocator,
        _io: *kaitai_struct.KaitaiStream,
    };
    pub const ArgTuple = struct {
        pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*EnumIf.Operation, _root: ?*EnumIf) !*ArgTuple {
            const self = try _arena.allocator().create(ArgTuple);
            self.* = .{
                ._arena = _arena,
                ._io = _io,
                ._parent = _parent,
                ._root = _root,
            };
            try self._read();
            return self;
        }
        fn _allocator(self: *const ArgTuple) std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *ArgTuple) !void {
            self.num1 = try self._io.readU1();
            self.num2 = try self._io.readU1();
        }
        num1: u8 = undefined,
        num2: u8 = undefined,
        _root: ?*EnumIf,
        _parent: ?*EnumIf.Operation,
        _arena: *std.heap.ArenaAllocator,
        _io: *kaitai_struct.KaitaiStream,
    };
    pub const Operation = struct {
        pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*EnumIf, _root: ?*EnumIf) !*Operation {
            const self = try _arena.allocator().create(Operation);
            self.* = .{
                ._arena = _arena,
                ._io = _io,
                ._parent = _parent,
                ._root = _root,
            };
            try self._read();
            return self;
        }
        fn _allocator(self: *const Operation) std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *Operation) !void {
            self.opcode = @as(EnumIf.Opcodes, @enumFromInt(try self._io.readU1()));
            if (self.opcode == EnumIf.Opcodes.a_tuple) {
                self.arg_tuple = try ArgTuple.create(self._arena, self._io, self, self._root);
            }
            if (self.opcode == EnumIf.Opcodes.a_string) {
                self.arg_str = try ArgStr.create(self._arena, self._io, self, self._root);
            }
        }
        opcode: Opcodes = undefined,
        arg_tuple: ?*ArgTuple = null,
        arg_str: ?*ArgStr = null,
        _root: ?*EnumIf,
        _parent: ?*EnumIf,
        _arena: *std.heap.ArenaAllocator,
        _io: *kaitai_struct.KaitaiStream,
    };
    op1: *Operation = undefined,
    op2: *Operation = undefined,
    op3: *Operation = undefined,
    _root: ?*EnumIf,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
