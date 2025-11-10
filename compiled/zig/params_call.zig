// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const ParamsCall = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*ParamsCall) !*ParamsCall {
        const self = try _arena.allocator().create(ParamsCall);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const ParamsCall) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *ParamsCall) !void {
        self.buf1 = try MyStr1.create(self._arena, self._io, self, self._root, 5);
        self.buf2 = try MyStr2.create(self._arena, self._io, self, self._root, 2 + 3, true);
    }
    pub const MyStr1 = struct {
        pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*ParamsCall, _root: ?*ParamsCall, len: u32) !*MyStr1 {
            const self = try _arena.allocator().create(MyStr1);
            self.* = .{
                ._arena = _arena,
                ._io = _io,
                ._parent = _parent,
                ._root = _root,
            };
            self.len = len;
            try self._read();
            return self;
        }
        fn _allocator(self: *const MyStr1) _imp_std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *MyStr1) !void {
            self.body = (try _imp_kaitai_struct.KaitaiStream.bytesToStr(self._allocator(), try self._io.readBytes(self._allocator(), self.len), "UTF-8"));
        }
        body: []const u8 = undefined,
        len: u32 = undefined,
        _root: ?*ParamsCall,
        _parent: ?*ParamsCall,
        _arena: *_imp_std.heap.ArenaAllocator,
        _io: *_imp_kaitai_struct.KaitaiStream,
    };
    pub const MyStr2 = struct {
        pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*ParamsCall, _root: ?*ParamsCall, len: u32, has_trailer: bool) !*MyStr2 {
            const self = try _arena.allocator().create(MyStr2);
            self.* = .{
                ._arena = _arena,
                ._io = _io,
                ._parent = _parent,
                ._root = _root,
            };
            self.len = len;
            self.has_trailer = has_trailer;
            try self._read();
            return self;
        }
        fn _allocator(self: *const MyStr2) _imp_std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *MyStr2) !void {
            self.body = (try _imp_kaitai_struct.KaitaiStream.bytesToStr(self._allocator(), try self._io.readBytes(self._allocator(), self.len), "UTF-8"));
            if (self.has_trailer) {
                self.trailer = try self._io.readU1();
            }
        }
        body: []const u8 = undefined,
        trailer: ?u8 = null,
        len: u32 = undefined,
        has_trailer: bool = undefined,
        _root: ?*ParamsCall,
        _parent: ?*ParamsCall,
        _arena: *_imp_std.heap.ArenaAllocator,
        _io: *_imp_kaitai_struct.KaitaiStream,
    };
    buf1: *MyStr1 = undefined,
    buf2: *MyStr2 = undefined,
    _root: ?*ParamsCall,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
