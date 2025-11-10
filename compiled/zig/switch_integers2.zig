// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const SwitchIntegers2 = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*SwitchIntegers2) !*SwitchIntegers2 {
        const self = try _arena.allocator().create(SwitchIntegers2);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const SwitchIntegers2) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *SwitchIntegers2) !void {
        self.code = try self._io.readU1();
        switch (self.code) {
            1 => {
                self.len = try self._io.readU1();
            },
            2 => {
                self.len = try self._io.readU2le();
            },
            4 => {
                self.len = try self._io.readU4le();
            },
            8 => {
                self.len = try self._io.readU8le();
            },
            else => {
            },
        }
        self.ham = try self._io.readBytes(self._allocator(), self.len);
        if (self.len > 3) {
            self.padding = try self._io.readU1();
        }
    }
    pub fn lenModStr(self: *SwitchIntegers2) ![]const u8 {
        if (self._m_len_mod_str) |_v|
            return _v;
        var _v: []const u8 = undefined;
        _v = (try _imp_std.fmt.allocPrint(self._allocator(), "{d}", .{ self.len * 2 - 1 }));
        self._m_len_mod_str = _v;
        return _v;
    }
    _m_len_mod_str: ?[]const u8 = null,
    code: u8 = undefined,
    len: ?u64 = null,
    ham: []const u8 = undefined,
    padding: ?u8 = null,
    _root: ?*SwitchIntegers2,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
