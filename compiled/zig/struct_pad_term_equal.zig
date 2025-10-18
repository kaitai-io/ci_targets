// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const StructPadTermEqual = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*StructPadTermEqual) !*StructPadTermEqual {
        const self = try _arena.allocator().create(StructPadTermEqual);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const StructPadTermEqual) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *StructPadTermEqual) !void {
        self._raw_s1 = kaitai_struct.KaitaiStream.bytesTerminate(try self._io.readBytes(self._allocator(), 20), 64, false);
        const _io__raw_s1 = try self._allocator().create(kaitai_struct.KaitaiStream);
        _io__raw_s1.* = kaitai_struct.KaitaiStream.fromBytes(self._raw_s1);
        self.s1 = try BytesWrapper.create(self._arena, _io__raw_s1, self, self._root);
        self._raw_s2 = kaitai_struct.KaitaiStream.bytesTerminate(kaitai_struct.KaitaiStream.bytesStripRight(try self._io.readBytes(self._allocator(), 20), 43), 64, true);
        const _io__raw_s2 = try self._allocator().create(kaitai_struct.KaitaiStream);
        _io__raw_s2.* = kaitai_struct.KaitaiStream.fromBytes(self._raw_s2);
        self.s2 = try BytesWrapper.create(self._arena, _io__raw_s2, self, self._root);
        self._raw_s3 = kaitai_struct.KaitaiStream.bytesTerminate(try self._io.readBytes(self._allocator(), 20), 43, false);
        const _io__raw_s3 = try self._allocator().create(kaitai_struct.KaitaiStream);
        _io__raw_s3.* = kaitai_struct.KaitaiStream.fromBytes(self._raw_s3);
        self.s3 = try BytesWrapper.create(self._arena, _io__raw_s3, self, self._root);
        self._raw_s4 = kaitai_struct.KaitaiStream.bytesTerminate(try self._io.readBytes(self._allocator(), 20), 46, true);
        const _io__raw_s4 = try self._allocator().create(kaitai_struct.KaitaiStream);
        _io__raw_s4.* = kaitai_struct.KaitaiStream.fromBytes(self._raw_s4);
        self.s4 = try BytesWrapper.create(self._arena, _io__raw_s4, self, self._root);
    }
    pub const BytesWrapper = struct {
        pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*StructPadTermEqual, _root: ?*StructPadTermEqual) !*BytesWrapper {
            const self = try _arena.allocator().create(BytesWrapper);
            self.* = .{
                ._arena = _arena,
                ._io = _io,
                ._parent = _parent,
                ._root = _root,
            };
            try self._read();
            return self;
        }
        fn _allocator(self: *const BytesWrapper) std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *BytesWrapper) !void {
            self.value = try self._io.readBytesFull(self._allocator());
        }
        value: []u8 = undefined,
        _root: ?*StructPadTermEqual,
        _parent: ?*StructPadTermEqual,
        _arena: *std.heap.ArenaAllocator,
        _io: *kaitai_struct.KaitaiStream,
    };
    s1: *BytesWrapper = undefined,
    s2: *BytesWrapper = undefined,
    s3: *BytesWrapper = undefined,
    s4: *BytesWrapper = undefined,
    _root: ?*StructPadTermEqual,
    _parent: ?*anyopaque,
    _raw_s1: []u8 = undefined,
    _raw_s2: []u8 = undefined,
    _raw_s3: []u8 = undefined,
    _raw_s4: []u8 = undefined,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
