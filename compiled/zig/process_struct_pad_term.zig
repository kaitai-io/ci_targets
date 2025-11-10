// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const ProcessStructPadTerm = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*ProcessStructPadTerm) !*ProcessStructPadTerm {
        const self = try _arena.allocator().create(ProcessStructPadTerm);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const ProcessStructPadTerm) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *ProcessStructPadTerm) !void {
        const _raw__raw_str_pad = _imp_kaitai_struct.KaitaiStream.bytesStripRight(try self._io.readBytes(self._allocator(), 20), 64);
        const _raw_str_pad = try _imp_kaitai_struct.KaitaiStream.processXorOne(self._allocator(), _raw__raw_str_pad, @as(u8, 21));
        const _io__raw_str_pad = try self._allocator().create(_imp_kaitai_struct.KaitaiStream);
        _io__raw_str_pad.* = _imp_kaitai_struct.KaitaiStream.fromBytes(_raw_str_pad);
        self.str_pad = try BytesWrapper.create(self._arena, _io__raw_str_pad, self, self._root);
        const _raw__raw_str_term = _imp_kaitai_struct.KaitaiStream.bytesTerminate(try self._io.readBytes(self._allocator(), 20), 64, false);
        const _raw_str_term = try _imp_kaitai_struct.KaitaiStream.processXorOne(self._allocator(), _raw__raw_str_term, @as(u8, 21));
        const _io__raw_str_term = try self._allocator().create(_imp_kaitai_struct.KaitaiStream);
        _io__raw_str_term.* = _imp_kaitai_struct.KaitaiStream.fromBytes(_raw_str_term);
        self.str_term = try BytesWrapper.create(self._arena, _io__raw_str_term, self, self._root);
        const _raw__raw_str_term_and_pad = _imp_kaitai_struct.KaitaiStream.bytesTerminate(_imp_kaitai_struct.KaitaiStream.bytesStripRight(try self._io.readBytes(self._allocator(), 20), 43), 64, false);
        const _raw_str_term_and_pad = try _imp_kaitai_struct.KaitaiStream.processXorOne(self._allocator(), _raw__raw_str_term_and_pad, @as(u8, 21));
        const _io__raw_str_term_and_pad = try self._allocator().create(_imp_kaitai_struct.KaitaiStream);
        _io__raw_str_term_and_pad.* = _imp_kaitai_struct.KaitaiStream.fromBytes(_raw_str_term_and_pad);
        self.str_term_and_pad = try BytesWrapper.create(self._arena, _io__raw_str_term_and_pad, self, self._root);
        const _raw__raw_str_term_include = _imp_kaitai_struct.KaitaiStream.bytesTerminate(try self._io.readBytes(self._allocator(), 20), 64, true);
        const _raw_str_term_include = try _imp_kaitai_struct.KaitaiStream.processXorOne(self._allocator(), _raw__raw_str_term_include, @as(u8, 21));
        const _io__raw_str_term_include = try self._allocator().create(_imp_kaitai_struct.KaitaiStream);
        _io__raw_str_term_include.* = _imp_kaitai_struct.KaitaiStream.fromBytes(_raw_str_term_include);
        self.str_term_include = try BytesWrapper.create(self._arena, _io__raw_str_term_include, self, self._root);
    }
    pub const BytesWrapper = struct {
        pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*ProcessStructPadTerm, _root: ?*ProcessStructPadTerm) !*BytesWrapper {
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
        fn _allocator(self: *const BytesWrapper) _imp_std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *BytesWrapper) !void {
            self.value = try self._io.readBytesFull(self._allocator());
        }
        value: []const u8 = undefined,
        _root: ?*ProcessStructPadTerm,
        _parent: ?*ProcessStructPadTerm,
        _arena: *_imp_std.heap.ArenaAllocator,
        _io: *_imp_kaitai_struct.KaitaiStream,
    };
    str_pad: *BytesWrapper = undefined,
    str_term: *BytesWrapper = undefined,
    str_term_and_pad: *BytesWrapper = undefined,
    str_term_include: *BytesWrapper = undefined,
    _root: ?*ProcessStructPadTerm,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
