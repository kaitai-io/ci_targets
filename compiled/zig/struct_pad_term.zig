// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const StructPadTerm = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*StructPadTerm) !*StructPadTerm {
        const self = try _arena.allocator().create(StructPadTerm);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const StructPadTerm) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *StructPadTerm) !void {
        self._raw_str_pad = kaitai_struct.KaitaiStream.bytesStripRight(try self._io.readBytes(self._allocator(), 20), 64);
        const _io__raw_str_pad = try self._allocator().create(kaitai_struct.KaitaiStream);
        _io__raw_str_pad.* = kaitai_struct.KaitaiStream.fromBytes(self._raw_str_pad);
        self.str_pad = try BytesWrapper.create(self._arena, _io__raw_str_pad, self, self._root);
        self._raw_str_term = kaitai_struct.KaitaiStream.bytesTerminate(try self._io.readBytes(self._allocator(), 20), 64, false);
        const _io__raw_str_term = try self._allocator().create(kaitai_struct.KaitaiStream);
        _io__raw_str_term.* = kaitai_struct.KaitaiStream.fromBytes(self._raw_str_term);
        self.str_term = try BytesWrapper.create(self._arena, _io__raw_str_term, self, self._root);
        self._raw_str_term_and_pad = kaitai_struct.KaitaiStream.bytesTerminate(kaitai_struct.KaitaiStream.bytesStripRight(try self._io.readBytes(self._allocator(), 20), 43), 64, false);
        const _io__raw_str_term_and_pad = try self._allocator().create(kaitai_struct.KaitaiStream);
        _io__raw_str_term_and_pad.* = kaitai_struct.KaitaiStream.fromBytes(self._raw_str_term_and_pad);
        self.str_term_and_pad = try BytesWrapper.create(self._arena, _io__raw_str_term_and_pad, self, self._root);
        self._raw_str_term_include = kaitai_struct.KaitaiStream.bytesTerminate(try self._io.readBytes(self._allocator(), 20), 64, true);
        const _io__raw_str_term_include = try self._allocator().create(kaitai_struct.KaitaiStream);
        _io__raw_str_term_include.* = kaitai_struct.KaitaiStream.fromBytes(self._raw_str_term_include);
        self.str_term_include = try BytesWrapper.create(self._arena, _io__raw_str_term_include, self, self._root);
    }
    pub const BytesWrapper = struct {
        pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*StructPadTerm, _root: ?*StructPadTerm) !*BytesWrapper {
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
        _root: ?*StructPadTerm,
        _parent: ?*StructPadTerm,
        _arena: *std.heap.ArenaAllocator,
        _io: *kaitai_struct.KaitaiStream,
    };
    str_pad: *BytesWrapper = undefined,
    str_term: *BytesWrapper = undefined,
    str_term_and_pad: *BytesWrapper = undefined,
    str_term_include: *BytesWrapper = undefined,
    _root: ?*StructPadTerm,
    _parent: ?*anyopaque,
    _raw_str_pad: []u8 = undefined,
    _raw_str_term: []u8 = undefined,
    _raw_str_term_and_pad: []u8 = undefined,
    _raw_str_term_include: []u8 = undefined,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
