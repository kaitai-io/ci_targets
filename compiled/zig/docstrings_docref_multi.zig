// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");


/// Sample docstring
///
/// See also:
///
/// * Plain text description of doc ref, page 42
/// * [Source](http://www.example.com/some/path/?even_with=query&more=2)
/// * [Documentation name](http://www.example.com/three)
pub const DocstringsDocrefMulti = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*DocstringsDocrefMulti) !*DocstringsDocrefMulti {
        const self = try _arena.allocator().create(DocstringsDocrefMulti);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const DocstringsDocrefMulti) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *DocstringsDocrefMulti) !void {
        _ = self;
    }
    _root: ?*DocstringsDocrefMulti,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
