// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");


/// One-liner description of a type.
pub const Docstrings = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*Docstrings) !*Docstrings {
        const self = try _arena.allocator().create(Docstrings);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const Docstrings) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *Docstrings) !void {
        self.one = try self._io.readU1();
    }

    /// This subtype is never used, yet has a very long description
    /// that spans multiple lines. It should be formatted accordingly,
    /// even in languages that have single-line comments for
    /// docstrings. Actually, there's even a MarkDown-style list here
    /// with several bullets:
    /// 
    /// * one
    /// * two
    /// * three
    /// 
    /// And the text continues after that. Here's a MarkDown-style link:
    /// [woohoo](http://example.com) - one day it will be supported as
    /// well.
    pub const ComplexSubtype = struct {
        pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*Docstrings) !*ComplexSubtype {
            const self = try _arena.allocator().create(ComplexSubtype);
            self.* = .{
                ._arena = _arena,
                ._io = _io,
                ._parent = _parent,
                ._root = _root,
            };
            try self._read();
            return self;
        }
        fn _allocator(self: *const ComplexSubtype) _imp_std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *ComplexSubtype) !void {
            _ = self;
        }
        _root: ?*Docstrings,
        _parent: ?*anyopaque,
        _arena: *_imp_std.heap.ArenaAllocator,
        _io: *_imp_kaitai_struct.KaitaiStream,
    };

    /// And yet another one for value instance "three"
    pub fn three(self: *Docstrings) !i8 {
        if (self._m_three) |_v|
            return _v;
        var _v: i8 = undefined;
        _v = 66;
        self._m_three = _v;
        return _v;
    }

    /// Another description for parse instance "two"
    pub fn two(self: *Docstrings) !u8 {
        if (self._m_two) |_v|
            return _v;
        var _v: u8 = undefined;
        const _pos = self._io.pos();
        try self._io.seek(0);
        _v = try self._io.readU1();
        try self._io.seek(_pos);
        self._m_two = _v;
        return _v;
    }

    /// A pretty verbose description for sequence attribute "one"
    _m_three: ?i8 = null,
    _m_two: ?u8 = null,
    one: u8 = undefined,
    _root: ?*Docstrings,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
