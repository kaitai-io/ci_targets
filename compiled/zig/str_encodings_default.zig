// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const StrEncodingsDefault = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*StrEncodingsDefault) !*StrEncodingsDefault {
        const self = try _arena.allocator().create(StrEncodingsDefault);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const StrEncodingsDefault) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *StrEncodingsDefault) !void {
        self.len_of_1 = try self._io.readU2le();
        self.str1 = (try _imp_kaitai_struct.KaitaiStream.bytesToStr(self._allocator(), try self._io.readBytes(self._allocator(), self.len_of_1), "UTF-8"));
        self.rest = try Subtype.create(self._arena, self._io, self, self._root);
    }
    pub const Subtype = struct {
        pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*StrEncodingsDefault, _root: ?*StrEncodingsDefault) !*Subtype {
            const self = try _arena.allocator().create(Subtype);
            self.* = .{
                ._arena = _arena,
                ._io = _io,
                ._parent = _parent,
                ._root = _root,
            };
            try self._read();
            return self;
        }
        fn _allocator(self: *const Subtype) _imp_std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *Subtype) !void {
            self.len_of_2 = try self._io.readU2le();
            self.str2 = (try _imp_kaitai_struct.KaitaiStream.bytesToStr(self._allocator(), try self._io.readBytes(self._allocator(), self.len_of_2), "UTF-8"));
            self.len_of_3 = try self._io.readU2le();
            self.str3 = (try _imp_kaitai_struct.KaitaiStream.bytesToStr(self._allocator(), try self._io.readBytes(self._allocator(), self.len_of_3), "Shift_JIS"));
            self.len_of_4 = try self._io.readU2le();
            self.str4 = (try _imp_kaitai_struct.KaitaiStream.bytesToStr(self._allocator(), try self._io.readBytes(self._allocator(), self.len_of_4), "IBM437"));
        }
        len_of_2: u16 = undefined,
        str2: []const u8 = undefined,
        len_of_3: u16 = undefined,
        str3: []const u8 = undefined,
        len_of_4: u16 = undefined,
        str4: []const u8 = undefined,
        _root: ?*StrEncodingsDefault,
        _parent: ?*StrEncodingsDefault,
        _arena: *_imp_std.heap.ArenaAllocator,
        _io: *_imp_kaitai_struct.KaitaiStream,
    };
    len_of_1: u16 = undefined,
    str1: []const u8 = undefined,
    rest: *Subtype = undefined,
    _root: ?*StrEncodingsDefault,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
