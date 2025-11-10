// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const DefaultEndianExprException = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*DefaultEndianExprException) !*DefaultEndianExprException {
        const self = try _arena.allocator().create(DefaultEndianExprException);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const DefaultEndianExprException) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *DefaultEndianExprException) !void {
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
        pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*DefaultEndianExprException, _root: ?*DefaultEndianExprException) !*Doc {
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
            pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*DefaultEndianExprException.Doc, _root: ?*DefaultEndianExprException) !*MainObj {
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
                    else if (_imp_std.mem.eql(u8, _on, &[_]u8{ 77, 77 })) {
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
                self.some_int = try self._io.readU4le();
                self.some_int_be = try self._io.readU2be();
                self.some_int_le = try self._io.readU2le();
            }
            fn _readBE(self: *MainObj) !void {
                self.some_int = try self._io.readU4be();
                self.some_int_be = try self._io.readU2be();
                self.some_int_le = try self._io.readU2le();
            }
            some_int: u32 = undefined,
            some_int_be: u16 = undefined,
            some_int_le: u16 = undefined,
            _root: ?*DefaultEndianExprException,
            _parent: ?*DefaultEndianExprException.Doc,
            _arena: *_imp_std.heap.ArenaAllocator,
            _io: *_imp_kaitai_struct.KaitaiStream,
            _is_le: ?bool = null,
        };
        indicator: []const u8 = undefined,
        main: *MainObj = undefined,
        _root: ?*DefaultEndianExprException,
        _parent: ?*DefaultEndianExprException,
        _arena: *_imp_std.heap.ArenaAllocator,
        _io: *_imp_kaitai_struct.KaitaiStream,
    };
    docs: *_imp_std.ArrayList(*Doc) = undefined,
    _root: ?*DefaultEndianExprException,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
