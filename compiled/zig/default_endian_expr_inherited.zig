// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const DefaultEndianExprInherited = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*DefaultEndianExprInherited) !*DefaultEndianExprInherited {
        const self = try _arena.allocator().create(DefaultEndianExprInherited);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const DefaultEndianExprInherited) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *DefaultEndianExprInherited) !void {
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
        pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*DefaultEndianExprInherited, _root: ?*DefaultEndianExprInherited) !*Doc {
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
            pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*DefaultEndianExprInherited.Doc, _root: ?*DefaultEndianExprInherited) !*MainObj {
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
                    if (_imp_std.mem.eql(u8, _on, &[_]u8{ 73, 73 })) {
                        self._is_le = true;
                    }
                    else {
                        self._is_le = false;
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
                self.insides = try SubObj.create(self._arena, self._io, self, self._root, self._is_le);
            }
            fn _readBE(self: *MainObj) !void {
                self.insides = try SubObj.create(self._arena, self._io, self, self._root, self._is_le);
            }
            pub const SubObj = struct {
                pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*DefaultEndianExprInherited.Doc.MainObj, _root: ?*DefaultEndianExprInherited, _is_le: ?bool) !*SubObj {
                    const self = try _arena.allocator().create(SubObj);
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
                fn _allocator(self: *const SubObj) _imp_std.mem.Allocator {
                    return self._arena.allocator();
                }
                fn _read(self: *SubObj) !void {
                    if (self._is_le == true) {
                        try self._readLE();
                    } else if (self._is_le == false) {
                        try self._readBE();
                    } else {
                        return error.UndecidedEndiannessError;
                    }
                }
                fn _readLE(self: *SubObj) !void {
                    self.some_int = try self._io.readU4le();
                    self.more = try SubsubObj.create(self._arena, self._io, self, self._root, self._is_le);
                }
                fn _readBE(self: *SubObj) !void {
                    self.some_int = try self._io.readU4be();
                    self.more = try SubsubObj.create(self._arena, self._io, self, self._root, self._is_le);
                }
                pub const SubsubObj = struct {
                    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*DefaultEndianExprInherited.Doc.MainObj.SubObj, _root: ?*DefaultEndianExprInherited, _is_le: ?bool) !*SubsubObj {
                        const self = try _arena.allocator().create(SubsubObj);
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
                    fn _allocator(self: *const SubsubObj) _imp_std.mem.Allocator {
                        return self._arena.allocator();
                    }
                    fn _read(self: *SubsubObj) !void {
                        if (self._is_le == true) {
                            try self._readLE();
                        } else if (self._is_le == false) {
                            try self._readBE();
                        } else {
                            return error.UndecidedEndiannessError;
                        }
                    }
                    fn _readLE(self: *SubsubObj) !void {
                        self.some_int1 = try self._io.readU2le();
                        self.some_int2 = try self._io.readU2le();
                    }
                    fn _readBE(self: *SubsubObj) !void {
                        self.some_int1 = try self._io.readU2be();
                        self.some_int2 = try self._io.readU2be();
                    }
                    pub fn someInst(self: *SubsubObj) !u32 {
                        if (self._m_some_inst) |_v|
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
                        self._m_some_inst = _v;
                        return _v;
                    }
                    _m_some_inst: ?u32 = null,
                    some_int1: u16 = undefined,
                    some_int2: u16 = undefined,
                    _root: ?*DefaultEndianExprInherited,
                    _parent: ?*DefaultEndianExprInherited.Doc.MainObj.SubObj,
                    _arena: *_imp_std.heap.ArenaAllocator,
                    _io: *_imp_kaitai_struct.KaitaiStream,
                    _is_le: ?bool,
                };
                some_int: u32 = undefined,
                more: *SubsubObj = undefined,
                _root: ?*DefaultEndianExprInherited,
                _parent: ?*DefaultEndianExprInherited.Doc.MainObj,
                _arena: *_imp_std.heap.ArenaAllocator,
                _io: *_imp_kaitai_struct.KaitaiStream,
                _is_le: ?bool,
            };
            insides: *SubObj = undefined,
            _root: ?*DefaultEndianExprInherited,
            _parent: ?*DefaultEndianExprInherited.Doc,
            _arena: *_imp_std.heap.ArenaAllocator,
            _io: *_imp_kaitai_struct.KaitaiStream,
            _is_le: ?bool = null,
        };
        indicator: []const u8 = undefined,
        main: *MainObj = undefined,
        _root: ?*DefaultEndianExprInherited,
        _parent: ?*DefaultEndianExprInherited,
        _arena: *_imp_std.heap.ArenaAllocator,
        _io: *_imp_kaitai_struct.KaitaiStream,
    };
    docs: *_imp_std.ArrayList(*Doc) = undefined,
    _root: ?*DefaultEndianExprInherited,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
