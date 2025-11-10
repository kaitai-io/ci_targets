// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const ProcessTermStruct = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*ProcessTermStruct) !*ProcessTermStruct {
        const self = try _arena.allocator().create(ProcessTermStruct);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const ProcessTermStruct) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *ProcessTermStruct) !void {
        const _raw__raw_s1 = try self._io.readBytesTerm(self._allocator(), 124, false, true, true);
        MyCustomFx _process__raw__raw_s1 = new MyCustomFx(32, false, &[_]u8{ 0 });
        const _raw_s1 = _process__raw__raw_s1.decode(self._allocator(), _raw__raw_s1);
        const _io__raw_s1 = try self._allocator().create(_imp_kaitai_struct.KaitaiStream);
        _io__raw_s1.* = _imp_kaitai_struct.KaitaiStream.fromBytes(_raw_s1);
        self.s1 = try BytesWrapper.create(self._arena, _io__raw_s1, self, self._root);
        const _raw__raw_s2 = try self._io.readBytesTerm(self._allocator(), 124, false, false, true);
        MyCustomFx _process__raw__raw_s2 = new MyCustomFx(32, false, &[_]u8{ 0 });
        const _raw_s2 = _process__raw__raw_s2.decode(self._allocator(), _raw__raw_s2);
        const _io__raw_s2 = try self._allocator().create(_imp_kaitai_struct.KaitaiStream);
        _io__raw_s2.* = _imp_kaitai_struct.KaitaiStream.fromBytes(_raw_s2);
        self.s2 = try BytesWrapper.create(self._arena, _io__raw_s2, self, self._root);
        const _raw__raw_s3 = try self._io.readBytesTerm(self._allocator(), 64, true, true, true);
        MyCustomFx _process__raw__raw_s3 = new MyCustomFx(32, false, &[_]u8{ 0 });
        const _raw_s3 = _process__raw__raw_s3.decode(self._allocator(), _raw__raw_s3);
        const _io__raw_s3 = try self._allocator().create(_imp_kaitai_struct.KaitaiStream);
        _io__raw_s3.* = _imp_kaitai_struct.KaitaiStream.fromBytes(_raw_s3);
        self.s3 = try BytesWrapper.create(self._arena, _io__raw_s3, self, self._root);
    }
    pub const BytesWrapper = struct {
        pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*ProcessTermStruct, _root: ?*ProcessTermStruct) !*BytesWrapper {
            const self = try _arena.allocator().create(BytesWrapper);
            self.* = .{
                ._arena = _arena,
                ._io = _io,
                ._parent = _parent,
                ._root = _root,
            };
            try self._read();
            return self;
        }
        fn _allocator(self: *const BytesWrapper) _imp_std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *BytesWrapper) !void {
            self.value = try self._io.readBytesFull(self._allocator());
        }
        value: []const u8 = undefined,
        _root: ?*ProcessTermStruct,
        _parent: ?*ProcessTermStruct,
        _arena: *_imp_std.heap.ArenaAllocator,
        _io: *_imp_kaitai_struct.KaitaiStream,
    };
    s1: *BytesWrapper = undefined,
    s2: *BytesWrapper = undefined,
    s3: *BytesWrapper = undefined,
    _root: ?*ProcessTermStruct,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
