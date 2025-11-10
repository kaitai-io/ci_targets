// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const DefaultEndianExprIsBe = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*DefaultEndianExprIsBe) !*DefaultEndianExprIsBe {
        const self = try _arena.allocator().create(DefaultEndianExprIsBe);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const DefaultEndianExprIsBe) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *DefaultEndianExprIsBe) !void {
        self.docs = try self._allocator().create(_imp_std.ArrayList(*Doc));
        self.docs.* = .empty;
        {
            var i: usize = 0;
            while (!try self._io.isEof()) : (i += 1) {
                try self.docs.append(self._allocator(), try Doc.create(self._arena, self._io, self, self._root));
            }
        }
    }
    pub const Doc = struct {
        pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*DefaultEndianExprIsBe, _root: ?*DefaultEndianExprIsBe) !*Doc {
            const self = try _arena.allocator().create(Doc);
            self.* = .{
                ._arena = _arena,
                ._io = _io,
                ._parent = _parent,
                ._root = _root,
            };
            try self._read();
            return self;
        }
        fn _allocator(self: *const Doc) _imp_std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *Doc) !void {
            self.indicator = try self._io.readBytes(self._allocator(), 2);
            self.main = try MainObj.create(self._arena, self._io, self, self._root);
        }
        pub const MainObj = struct {
            pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*DefaultEndianExprIsBe.Doc, _root: ?*DefaultEndianExprIsBe) !*MainObj {
                const self = try _arena.allocator().create(MainObj);
                self.* = .{
                    ._arena = _arena,
                    ._io = _io,
                    ._parent = _parent,
                    ._root = _root,
                };
                try self._read();
                return self;
            }
            fn _allocator(self: *const MainObj) _imp_std.mem.Allocator {
                return self._arena.allocator();
            }
            fn _read(self: *MainObj) !void {
                {
                    const _on = self._parent.?.indicator;
                    if (_imp_std.mem.eql(u8, _on, &[_]u8{ 77, 77 })) {
                        self._is_le = false;
                    }
                    else {
                        self._is_le = true;
                    }
                }
                if (self._is_le == true) {
                    try self._readLE();
                } else if (self._is_le == false) {
                    try self._readBE();
                } else {
                    return error.UndecidedEndiannessError;
                }
            }
            fn _readLE(self: *MainObj) !void {
                self.some_int = try self._io.readU4le();
                self.some_int_be = try self._io.readU2be();
                self.some_int_le = try self._io.readU2le();
            }
            fn _readBE(self: *MainObj) !void {
                self.some_int = try self._io.readU4be();
                self.some_int_be = try self._io.readU2be();
                self.some_int_le = try self._io.readU2le();
            }
            pub const SubMainObj = struct {
                pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*DefaultEndianExprIsBe.Doc.MainObj, _root: ?*DefaultEndianExprIsBe, _is_le: ?bool) !*SubMainObj {
                    const self = try _arena.allocator().create(SubMainObj);
                    self.* = .{
                        ._arena = _arena,
                        ._io = _io,
                        ._parent = _parent,
                        ._root = _root,
                        ._is_le = _is_le,
                    };
                    try self._read();
                    return self;
                }
                fn _allocator(self: *const SubMainObj) _imp_std.mem.Allocator {
                    return self._arena.allocator();
                }
                fn _read(self: *SubMainObj) !void {
                    if (self._is_le == true) {
                        try self._readLE();
                    } else if (self._is_le == false) {
                        try self._readBE();
                    } else {
                        return error.UndecidedEndiannessError;
                    }
                }
                fn _readLE(self: *SubMainObj) !void {
                    self.foo = try self._io.readU4le();
                }
                fn _readBE(self: *SubMainObj) !void {
                    self.foo = try self._io.readU4be();
                }
                foo: u32 = undefined,
                _root: ?*DefaultEndianExprIsBe,
                _parent: ?*DefaultEndianExprIsBe.Doc.MainObj,
                _arena: *_imp_std.heap.ArenaAllocator,
                _io: *_imp_kaitai_struct.KaitaiStream,
                _is_le: ?bool,
            };
            pub fn instInt(self: *MainObj) !u32 {
                if (self._m_inst_int) |_v|
                    return _v;
                var _v: u32 = undefined;
                const _pos = self._io.pos();
                try self._io.seek(2);
                if (self._is_le.?) {
                    _v = try self._io.readU4le();
                } else {
                    _v = try self._io.readU4be();
                }
                try self._io.seek(_pos);
                self._m_inst_int = _v;
                return _v;
            }
            pub fn instSub(self: *MainObj) !*SubMainObj {
                if (self._m_inst_sub) |_v|
                    return _v;
                var _v: *SubMainObj = undefined;
                const _pos = self._io.pos();
                try self._io.seek(2);
                if (self._is_le.?) {
                    _v = try SubMainObj.create(self._arena, self._io, self, self._root, self._is_le);
                } else {
                    _v = try SubMainObj.create(self._arena, self._io, self, self._root, self._is_le);
                }
                try self._io.seek(_pos);
                self._m_inst_sub = _v;
                return _v;
            }
            _m_inst_int: ?u32 = null,
            _m_inst_sub: ?*SubMainObj = null,
            some_int: u32 = undefined,
            some_int_be: u16 = undefined,
            some_int_le: u16 = undefined,
            _root: ?*DefaultEndianExprIsBe,
            _parent: ?*DefaultEndianExprIsBe.Doc,
            _arena: *_imp_std.heap.ArenaAllocator,
            _io: *_imp_kaitai_struct.KaitaiStream,
            _is_le: ?bool = null,
        };
        indicator: []const u8 = undefined,
        main: *MainObj = undefined,
        _root: ?*DefaultEndianExprIsBe,
        _parent: ?*DefaultEndianExprIsBe,
        _arena: *_imp_std.heap.ArenaAllocator,
        _io: *_imp_kaitai_struct.KaitaiStream,
    };
    docs: *_imp_std.ArrayList(*Doc) = undefined,
    _root: ?*DefaultEndianExprIsBe,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
