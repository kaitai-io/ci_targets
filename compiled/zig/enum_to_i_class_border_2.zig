// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");
const _imp_enum_to_i_class_border_1 = @import("enum_to_i_class_border_1.zig");

pub const EnumToIClassBorder2 = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*EnumToIClassBorder2, parent: *_imp_enum_to_i_class_border_1.EnumToIClassBorder1) !*EnumToIClassBorder2 {
        const self = try _arena.allocator().create(EnumToIClassBorder2);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        self.parent = parent;
        try self._read();
        return self;
    }
    fn _allocator(self: *const EnumToIClassBorder2) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *EnumToIClassBorder2) !void {
        _ = self;
    }
    pub fn isDog(self: *EnumToIClassBorder2) !bool {
        if (self._m_is_dog) |_v|
            return _v;
        var _v: bool = undefined;
        _v = @intFromEnum((try self.parent.someDog())) == 4;
        self._m_is_dog = _v;
        return _v;
    }
    _m_is_dog: ?bool = null,
    parent: *_imp_enum_to_i_class_border_1.EnumToIClassBorder1 = undefined,
    _root: ?*EnumToIClassBorder2,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
