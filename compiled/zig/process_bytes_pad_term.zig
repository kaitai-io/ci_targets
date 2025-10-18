// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const ProcessBytesPadTerm = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*ProcessBytesPadTerm) !*ProcessBytesPadTerm {
        const self = try _arena.allocator().create(ProcessBytesPadTerm);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const ProcessBytesPadTerm) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *ProcessBytesPadTerm) !void {
        self._raw_str_pad = kaitai_struct.KaitaiStream.bytesStripRight(try self._io.readBytes(self._allocator(), 20), 64);
        self.str_pad = kaitai_struct.KaitaiStream.processXor(self._raw_str_pad, @as(i8, 21));
        self._raw_str_term = kaitai_struct.KaitaiStream.bytesTerminate(try self._io.readBytes(self._allocator(), 20), 64, false);
        self.str_term = kaitai_struct.KaitaiStream.processXor(self._raw_str_term, @as(i8, 21));
        self._raw_str_term_and_pad = kaitai_struct.KaitaiStream.bytesTerminate(kaitai_struct.KaitaiStream.bytesStripRight(try self._io.readBytes(self._allocator(), 20), 43), 64, false);
        self.str_term_and_pad = kaitai_struct.KaitaiStream.processXor(self._raw_str_term_and_pad, @as(i8, 21));
        self._raw_str_term_include = kaitai_struct.KaitaiStream.bytesTerminate(try self._io.readBytes(self._allocator(), 20), 64, true);
        self.str_term_include = kaitai_struct.KaitaiStream.processXor(self._raw_str_term_include, @as(i8, 21));
    }
    str_pad: []u8 = undefined,
    str_term: []u8 = undefined,
    str_term_and_pad: []u8 = undefined,
    str_term_include: []u8 = undefined,
    _root: ?*ProcessBytesPadTerm,
    _parent: ?*anyopaque,
    _raw_str_pad: []u8 = undefined,
    _raw_str_term: []u8 = undefined,
    _raw_str_term_and_pad: []u8 = undefined,
    _raw_str_term_include: []u8 = undefined,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
