// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const IfStruct = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*IfStruct) !*IfStruct {
        const self = try _arena.allocator().create(IfStruct);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const IfStruct) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *IfStruct) !void {
        self.op1 = try Operation.create(self._arena, self._io, self, self._root);
        self.op2 = try Operation.create(self._arena, self._io, self, self._root);
        self.op3 = try Operation.create(self._arena, self._io, self, self._root);
    }
    pub const ArgStr = struct {
        pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*IfStruct.Operation, _root: ?*IfStruct) !*ArgStr {
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
        fn _allocator(self: *const ArgStr) _imp_std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *ArgStr) !void {
            self.len = try self._io.readU1();
            self.str = (try _imp_kaitai_struct.KaitaiStream.bytesToStr(self._allocator(), try self._io.readBytes(self._allocator(), self.len), "UTF-8"));
        }
        len: u8 = undefined,
        str: []const u8 = undefined,
        _root: ?*IfStruct,
        _parent: ?*IfStruct.Operation,
        _arena: *_imp_std.heap.ArenaAllocator,
        _io: *_imp_kaitai_struct.KaitaiStream,
    };
    pub const ArgTuple = struct {
        pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*IfStruct.Operation, _root: ?*IfStruct) !*ArgTuple {
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
        fn _allocator(self: *const ArgTuple) _imp_std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *ArgTuple) !void {
            self.num1 = try self._io.readU1();
            self.num2 = try self._io.readU1();
        }
        num1: u8 = undefined,
        num2: u8 = undefined,
        _root: ?*IfStruct,
        _parent: ?*IfStruct.Operation,
        _arena: *_imp_std.heap.ArenaAllocator,
        _io: *_imp_kaitai_struct.KaitaiStream,
    };
    pub const Operation = struct {
        pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*IfStruct, _root: ?*IfStruct) !*Operation {
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
        fn _allocator(self: *const Operation) _imp_std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *Operation) !void {
            self.opcode = try self._io.readU1();
            if (self.opcode == 84) {
                self.arg_tuple = try ArgTuple.create(self._arena, self._io, self, self._root);
            }
            if (self.opcode == 83) {
                self.arg_str = try ArgStr.create(self._arena, self._io, self, self._root);
            }
        }
        opcode: u8 = undefined,
        arg_tuple: ?*ArgTuple = null,
        arg_str: ?*ArgStr = null,
        _root: ?*IfStruct,
        _parent: ?*IfStruct,
        _arena: *_imp_std.heap.ArenaAllocator,
        _io: *_imp_kaitai_struct.KaitaiStream,
    };
    op1: *Operation = undefined,
    op2: *Operation = undefined,
    op3: *Operation = undefined,
    _root: ?*IfStruct,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
