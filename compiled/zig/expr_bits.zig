// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const ExprBits = struct {
    pub const Items = enum(i32) {
        foo = 1,
        bar = 2,
        _,
    };
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*ExprBits) !*ExprBits {
        const self = try _arena.allocator().create(ExprBits);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const ExprBits) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *ExprBits) !void {
        self.enum_seq = @as(ExprBits.Items, @enumFromInt(try self._io.readBitsIntBe(2)));
        self.a = try self._io.readBitsIntBe(3);
        self.byte_size = try self._io.readBytes(self._allocator(), self.a);
        self.repeat_expr = try self._allocator().create(std.ArrayList(i8));
        self.repeat_expr.* = .empty;
        for (0..self.a) |i| {
            {
                const _maybe_unused = i;
                _ = _maybe_unused;
            }
            try self.repeat_expr.append(self._allocator(), try self._io.readS1());
        }
        switch (self.a) {
            2 => {
                self.switch_on_type = try self._io.readS1();
            },
            else => {
            },
        }
        self.switch_on_endian = try EndianSwitch.create(self._arena, self._io, self, self._root);
    }
    pub const EndianSwitch = struct {
        pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*ExprBits, _root: ?*ExprBits) !*EndianSwitch {
            const self = try _arena.allocator().create(EndianSwitch);
            self.* = .{
                ._arena = _arena,
                ._io = _io,
                ._parent = _parent,
                ._root = _root,
            };
            try self._read();
            return self;
        }
        fn _allocator(self: *const EndianSwitch) std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *EndianSwitch) !void {
            switch (self._parent.?.a) {
                1 => {
                    self._is_le = true;
                },
                2 => {
                    self._is_le = false;
                },
                else => {
                },
            }
            if (self._is_le == true) {
                try self._readLE();
            } else if (self._is_le == false) {
                try self._readBE();
            } else {
                return error.UndecidedEndiannessError;
            }
        }
        fn _readLE(self: *EndianSwitch) !void {
            self.foo = try self._io.readS2le();
        }
        fn _readBE(self: *EndianSwitch) !void {
            self.foo = try self._io.readS2be();
        }
        foo: i16 = undefined,
        _root: ?*ExprBits,
        _parent: ?*ExprBits,
        _arena: *std.heap.ArenaAllocator,
        _io: *kaitai_struct.KaitaiStream,
        _is_le: ?bool = null,
    };
    pub fn enumInst(self: *ExprBits) !Items {
        if (self._m_enum_inst) |_v|
            return _v;
        var _v: Items = undefined;
        _v = @as(ExprBits.Items, @enumFromInt(self.a));
        self._m_enum_inst = _v;
        return _v;
    }
    pub fn instPos(self: *ExprBits) !i8 {
        if (self._m_inst_pos) |_v|
            return _v;
        var _v: i8 = undefined;
        const _pos = self._io.pos();
        try self._io.seek(self.a);
        _v = try self._io.readS1();
        try self._io.seek(_pos);
        self._m_inst_pos = _v;
        return _v;
    }
    _m_enum_inst: ?Items = null,
    _m_inst_pos: ?i8 = null,
    enum_seq: Items = undefined,
    a: u64 = undefined,
    byte_size: []u8 = undefined,
    repeat_expr: *std.ArrayList(i8) = undefined,
    switch_on_type: ?i8 = null,
    switch_on_endian: *EndianSwitch = undefined,
    _root: ?*ExprBits,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
