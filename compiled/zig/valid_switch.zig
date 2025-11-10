// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const ValidSwitch = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*ValidSwitch) !*ValidSwitch {
        const self = try _arena.allocator().create(ValidSwitch);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const ValidSwitch) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *ValidSwitch) !void {
        self.a = try self._io.readU1();
        if (!(self.a == 80)) {
            return error.ValidationNotEqualError;
        }
        switch (self.a) {
            80 => {
                self.b = try self._io.readU2le();
            },
            else => {
                self.b = try self._io.readU2be();
            },
        }
        if (!(self.b == 17217)) {
            return error.ValidationNotEqualError;
        }
    }
    a: u8 = undefined,
    b: i32 = undefined,
    _root: ?*ValidSwitch,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
