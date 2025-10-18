// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const ValidFailRepeatInst = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*ValidFailRepeatInst) !*ValidFailRepeatInst {
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
    fn _allocator(self: *const ValidFailRepeatInst) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *ValidFailRepeatInst) !void {
        if ((try self.inst()).items.len == 0) {
            self.a = try self._io.readBytes(self._allocator(), 0);
        }
    }
    pub fn inst(self: *ValidFailRepeatInst) !*std.ArrayList(u32) {
        if (self._m_inst) |_v|
            return _v;
        var _v: *std.ArrayList(u32) = undefined;
        const _pos = self._io.pos();
        try self._io.seek(0);
        self._m_inst = try self._allocator().create(std.ArrayList(u32));
        self._m_inst.* = .empty;
        {
            var i: usize = 0;
            while (!try self._io.isEof()) : (i += 1) {
                try self._m_inst.append(self._allocator(), try self._io.readU4be());
                if (!(self._m_inst.items[i] == 305419896)) {
                    return error.ValidationNotEqualError;
                }
            }
        }
        try self._io.seek(_pos);
        self._m_inst = _v;
        return _v;
    }
    _m_inst: ?*std.ArrayList(u32) = null,
    a: ?[]u8 = null,
    _root: ?*ValidFailRepeatInst,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
