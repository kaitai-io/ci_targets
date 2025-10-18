// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const OpaqueExternalType02Child = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*OpaqueExternalType02Child) !*OpaqueExternalType02Child {
        const self = try _arena.allocator().create(OpaqueExternalType02Child);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const OpaqueExternalType02Child) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *OpaqueExternalType02Child) !void {
        self.s1 = kaitai_struct.KaitaiStream.bytesToStr(try self._io.readBytesTerm(self._allocator(), 124, false, true, true), "UTF-8");
        self.s2 = kaitai_struct.KaitaiStream.bytesToStr(try self._io.readBytesTerm(self._allocator(), 124, false, false, true), "UTF-8");
        self.s3 = try OpaqueExternalType02ChildChild.create(self._arena, self._io, self, self._root);
    }
    pub const OpaqueExternalType02ChildChild = struct {
        pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*OpaqueExternalType02Child, _root: ?*OpaqueExternalType02Child) !*OpaqueExternalType02ChildChild {
            const self = try _arena.allocator().create(OpaqueExternalType02ChildChild);
            self.* = .{
                ._arena = _arena,
                ._io = _io,
                ._parent = _parent,
                ._root = _root,
            };
            try self._read();
            return self;
        }
        fn _allocator(self: *const OpaqueExternalType02ChildChild) std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *OpaqueExternalType02ChildChild) !void {
            if ((try self._root.?.someMethod())) {
                self.s3 = kaitai_struct.KaitaiStream.bytesToStr(try self._io.readBytesTerm(self._allocator(), 64, true, true, true), "UTF-8");
            }
        }
        s3: ?[]u8 = null,
        _root: ?*OpaqueExternalType02Child,
        _parent: ?*OpaqueExternalType02Child,
        _arena: *std.heap.ArenaAllocator,
        _io: *kaitai_struct.KaitaiStream,
    };
    pub fn someMethod(self: *OpaqueExternalType02Child) !bool {
        if (self._m_some_method) |_v|
            return _v;
        var _v: bool = undefined;
        _v = true;
        self._m_some_method = _v;
        return _v;
    }
    _m_some_method: ?bool = null,
    s1: []u8 = undefined,
    s2: []u8 = undefined,
    s3: *OpaqueExternalType02ChildChild = undefined,
    _root: ?*OpaqueExternalType02Child,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
