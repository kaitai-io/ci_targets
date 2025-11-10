// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const ValidFailRepeatContents = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*ValidFailRepeatContents) !*ValidFailRepeatContents {
        const self = try _arena.allocator().create(ValidFailRepeatContents);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const ValidFailRepeatContents) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *ValidFailRepeatContents) !void {
        self.foo = try self._allocator().create(_imp_std.ArrayList([]const u8));
        self.foo.* = .empty;
        {
            var i: usize = 0;
            while (!try self._io.isEof()) : (i += 1) {
                try self.foo.append(self._allocator(), try self._io.readBytes(self._allocator(), 4));
                if (!(_imp_std.mem.eql(u8, self.foo.items[i], &[_]u8{ 18, 52, 86, 120 }))) {
                    return error.ValidationNotEqualError;
                }
            }
        }
    }
    foo: *_imp_std.ArrayList([]const u8) = undefined,
    _root: ?*ValidFailRepeatContents,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
