// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");


/// Another one-liner
///
/// See also:
///
/// * [Source](http://www.example.com/some/path/?even_with=query&more=2)
pub const DocstringsDocref = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*DocstringsDocref) !*DocstringsDocref {
        const self = try _arena.allocator().create(DocstringsDocref);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const DocstringsDocref) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *DocstringsDocref) !void {
        self.one = try self._io.readU1();
        self.two = try self._io.readU1();
        self.three = try self._io.readU1();
    }

    /// See also:
    ///
    /// * Doc ref for instance, a plain one
    pub fn foo(self: *DocstringsDocref) !bool {
        if (self._m_foo) |_v|
            return _v;
        var _v: bool = undefined;
        _v = true;
        self._m_foo = _v;
        return _v;
    }

    /// See also:
    ///
    /// * Now this is a really
    ///   long document ref that
    ///   spans multiple lines.
    pub fn parseInst(self: *DocstringsDocref) !u8 {
        if (self._m_parse_inst) |_v|
            return _v;
        var _v: u8 = undefined;
        const _pos = self._io.pos();
        try self._io.seek(0);
        _v = try self._io.readU1();
        try self._io.seek(_pos);
        self._m_parse_inst = _v;
        return _v;
    }

    /// See also:
    ///
    /// * Plain text description of doc ref, page 42

    /// Both doc and doc-ref are defined
    ///
    /// See also:
    ///
    /// * [Source](http://www.example.com/with/url/again)

    /// See also:
    ///
    /// * [Documentation name](http://www.example.com/three)
    _m_foo: ?bool = null,
    _m_parse_inst: ?u8 = null,
    one: u8 = undefined,
    two: u8 = undefined,
    three: u8 = undefined,
    _root: ?*DocstringsDocref,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
