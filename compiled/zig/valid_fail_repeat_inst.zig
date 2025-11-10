// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const ValidFailRepeatInst = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*ValidFailRepeatInst) !*ValidFailRepeatInst {
        const self = try _arena.allocator().create(ValidFailRepeatInst);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const ValidFailRepeatInst) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *ValidFailRepeatInst) !void {
        if ((try self.inst()).items.len == 0) {
            self.a = try self._io.readBytes(self._allocator(), 0);
        }
    }
    pub fn inst(self: *ValidFailRepeatInst) !*_imp_std.ArrayList(u32) {
        if (self._m_inst) |_v|
            return _v;
        var _v: *_imp_std.ArrayList(u32) = undefined;
        const _pos = self._io.pos();
        try self._io.seek(0);
        _v = try self._allocator().create(_imp_std.ArrayList(u32));
        _v.* = .empty;
        {
            var i: usize = 0;
            while (!try self._io.isEof()) : (i += 1) {
                try _v.append(self._allocator(), try self._io.readU4be());
                if (!(_v.items[i] == 305419896)) {
                    return error.ValidationNotEqualError;
                }
            }
        }
        try self._io.seek(_pos);
        self._m_inst = _v;
        return _v;
    }
    _m_inst: ?*_imp_std.ArrayList(u32) = null,
    a: ?[]const u8 = null,
    _root: ?*ValidFailRepeatInst,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
