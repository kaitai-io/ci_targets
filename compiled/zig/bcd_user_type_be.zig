// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const BcdUserTypeBe = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*BcdUserTypeBe) !*BcdUserTypeBe {
        const self = try _arena.allocator().create(BcdUserTypeBe);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const BcdUserTypeBe) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *BcdUserTypeBe) !void {
        const _raw_ltr = try self._io.readBytes(self._allocator(), 4);
        const _io__raw_ltr = try self._allocator().create(_imp_kaitai_struct.KaitaiStream);
        _io__raw_ltr.* = _imp_kaitai_struct.KaitaiStream.fromBytes(_raw_ltr);
        self.ltr = try LtrObj.create(self._arena, _io__raw_ltr, self, self._root);
        const _raw_rtl = try self._io.readBytes(self._allocator(), 4);
        const _io__raw_rtl = try self._allocator().create(_imp_kaitai_struct.KaitaiStream);
        _io__raw_rtl.* = _imp_kaitai_struct.KaitaiStream.fromBytes(_raw_rtl);
        self.rtl = try RtlObj.create(self._arena, _io__raw_rtl, self, self._root);
        const _raw_leading_zero_ltr = try self._io.readBytes(self._allocator(), 4);
        const _io__raw_leading_zero_ltr = try self._allocator().create(_imp_kaitai_struct.KaitaiStream);
        _io__raw_leading_zero_ltr.* = _imp_kaitai_struct.KaitaiStream.fromBytes(_raw_leading_zero_ltr);
        self.leading_zero_ltr = try LeadingZeroLtrObj.create(self._arena, _io__raw_leading_zero_ltr, self, self._root);
    }
    pub const LeadingZeroLtrObj = struct {
        pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*BcdUserTypeBe, _root: ?*BcdUserTypeBe) !*LeadingZeroLtrObj {
            const self = try _arena.allocator().create(LeadingZeroLtrObj);
            self.* = .{
                ._arena = _arena,
                ._io = _io,
                ._parent = _parent,
                ._root = _root,
            };
            try self._read();
            return self;
        }
        fn _allocator(self: *const LeadingZeroLtrObj) _imp_std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *LeadingZeroLtrObj) !void {
            self.b1 = try self._io.readU1();
            self.b2 = try self._io.readU1();
            self.b3 = try self._io.readU1();
            self.b4 = try self._io.readU1();
        }
        pub fn asInt(self: *LeadingZeroLtrObj) !i32 {
            if (self._m_as_int) |_v|
                return _v;
            var _v: i32 = undefined;
            _v = (((((((try self.digit8()) * 1 + (try self.digit7()) * 10) + (try self.digit6()) * 100) + (try self.digit5()) * 1000) + (try self.digit4()) * 10000) + (try self.digit3()) * 100000) + (try self.digit2()) * 1000000) + (try self.digit1()) * 10000000;
            self._m_as_int = _v;
            return _v;
        }
        pub fn asStr(self: *LeadingZeroLtrObj) ![]const u8 {
            if (self._m_as_str) |_v|
                return _v;
            var _v: []const u8 = undefined;
            _v = (try _imp_std.mem.concat(self._allocator(), u8, &[_][]const u8{ (try _imp_std.mem.concat(self._allocator(), u8, &[_][]const u8{ (try _imp_std.mem.concat(self._allocator(), u8, &[_][]const u8{ (try _imp_std.mem.concat(self._allocator(), u8, &[_][]const u8{ (try _imp_std.mem.concat(self._allocator(), u8, &[_][]const u8{ (try _imp_std.mem.concat(self._allocator(), u8, &[_][]const u8{ (try _imp_std.mem.concat(self._allocator(), u8, &[_][]const u8{ (try _imp_std.fmt.allocPrint(self._allocator(), "{d}", .{ (try self.digit1()) })), (try _imp_std.fmt.allocPrint(self._allocator(), "{d}", .{ (try self.digit2()) })) })), (try _imp_std.fmt.allocPrint(self._allocator(), "{d}", .{ (try self.digit3()) })) })), (try _imp_std.fmt.allocPrint(self._allocator(), "{d}", .{ (try self.digit4()) })) })), (try _imp_std.fmt.allocPrint(self._allocator(), "{d}", .{ (try self.digit5()) })) })), (try _imp_std.fmt.allocPrint(self._allocator(), "{d}", .{ (try self.digit6()) })) })), (try _imp_std.fmt.allocPrint(self._allocator(), "{d}", .{ (try self.digit7()) })) })), (try _imp_std.fmt.allocPrint(self._allocator(), "{d}", .{ (try self.digit8()) })) }));
            self._m_as_str = _v;
            return _v;
        }
        pub fn digit1(self: *LeadingZeroLtrObj) !i32 {
            if (self._m_digit1) |_v|
                return _v;
            var _v: i32 = undefined;
            _v = (self.b1 & 240) >> 4;
            self._m_digit1 = _v;
            return _v;
        }
        pub fn digit2(self: *LeadingZeroLtrObj) !i32 {
            if (self._m_digit2) |_v|
                return _v;
            var _v: i32 = undefined;
            _v = self.b1 & 15;
            self._m_digit2 = _v;
            return _v;
        }
        pub fn digit3(self: *LeadingZeroLtrObj) !i32 {
            if (self._m_digit3) |_v|
                return _v;
            var _v: i32 = undefined;
            _v = (self.b2 & 240) >> 4;
            self._m_digit3 = _v;
            return _v;
        }
        pub fn digit4(self: *LeadingZeroLtrObj) !i32 {
            if (self._m_digit4) |_v|
                return _v;
            var _v: i32 = undefined;
            _v = self.b2 & 15;
            self._m_digit4 = _v;
            return _v;
        }
        pub fn digit5(self: *LeadingZeroLtrObj) !i32 {
            if (self._m_digit5) |_v|
                return _v;
            var _v: i32 = undefined;
            _v = (self.b3 & 240) >> 4;
            self._m_digit5 = _v;
            return _v;
        }
        pub fn digit6(self: *LeadingZeroLtrObj) !i32 {
            if (self._m_digit6) |_v|
                return _v;
            var _v: i32 = undefined;
            _v = self.b3 & 15;
            self._m_digit6 = _v;
            return _v;
        }
        pub fn digit7(self: *LeadingZeroLtrObj) !i32 {
            if (self._m_digit7) |_v|
                return _v;
            var _v: i32 = undefined;
            _v = (self.b4 & 240) >> 4;
            self._m_digit7 = _v;
            return _v;
        }
        pub fn digit8(self: *LeadingZeroLtrObj) !i32 {
            if (self._m_digit8) |_v|
                return _v;
            var _v: i32 = undefined;
            _v = self.b4 & 15;
            self._m_digit8 = _v;
            return _v;
        }
        _m_as_int: ?i32 = null,
        _m_as_str: ?[]const u8 = null,
        _m_digit1: ?i32 = null,
        _m_digit2: ?i32 = null,
        _m_digit3: ?i32 = null,
        _m_digit4: ?i32 = null,
        _m_digit5: ?i32 = null,
        _m_digit6: ?i32 = null,
        _m_digit7: ?i32 = null,
        _m_digit8: ?i32 = null,
        b1: u8 = undefined,
        b2: u8 = undefined,
        b3: u8 = undefined,
        b4: u8 = undefined,
        _root: ?*BcdUserTypeBe,
        _parent: ?*BcdUserTypeBe,
        _arena: *_imp_std.heap.ArenaAllocator,
        _io: *_imp_kaitai_struct.KaitaiStream,
    };
    pub const LtrObj = struct {
        pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*BcdUserTypeBe, _root: ?*BcdUserTypeBe) !*LtrObj {
            const self = try _arena.allocator().create(LtrObj);
            self.* = .{
                ._arena = _arena,
                ._io = _io,
                ._parent = _parent,
                ._root = _root,
            };
            try self._read();
            return self;
        }
        fn _allocator(self: *const LtrObj) _imp_std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *LtrObj) !void {
            self.b1 = try self._io.readU1();
            self.b2 = try self._io.readU1();
            self.b3 = try self._io.readU1();
            self.b4 = try self._io.readU1();
        }
        pub fn asInt(self: *LtrObj) !i32 {
            if (self._m_as_int) |_v|
                return _v;
            var _v: i32 = undefined;
            _v = (((((((try self.digit8()) * 1 + (try self.digit7()) * 10) + (try self.digit6()) * 100) + (try self.digit5()) * 1000) + (try self.digit4()) * 10000) + (try self.digit3()) * 100000) + (try self.digit2()) * 1000000) + (try self.digit1()) * 10000000;
            self._m_as_int = _v;
            return _v;
        }
        pub fn asStr(self: *LtrObj) ![]const u8 {
            if (self._m_as_str) |_v|
                return _v;
            var _v: []const u8 = undefined;
            _v = (try _imp_std.mem.concat(self._allocator(), u8, &[_][]const u8{ (try _imp_std.mem.concat(self._allocator(), u8, &[_][]const u8{ (try _imp_std.mem.concat(self._allocator(), u8, &[_][]const u8{ (try _imp_std.mem.concat(self._allocator(), u8, &[_][]const u8{ (try _imp_std.mem.concat(self._allocator(), u8, &[_][]const u8{ (try _imp_std.mem.concat(self._allocator(), u8, &[_][]const u8{ (try _imp_std.mem.concat(self._allocator(), u8, &[_][]const u8{ (try _imp_std.fmt.allocPrint(self._allocator(), "{d}", .{ (try self.digit1()) })), (try _imp_std.fmt.allocPrint(self._allocator(), "{d}", .{ (try self.digit2()) })) })), (try _imp_std.fmt.allocPrint(self._allocator(), "{d}", .{ (try self.digit3()) })) })), (try _imp_std.fmt.allocPrint(self._allocator(), "{d}", .{ (try self.digit4()) })) })), (try _imp_std.fmt.allocPrint(self._allocator(), "{d}", .{ (try self.digit5()) })) })), (try _imp_std.fmt.allocPrint(self._allocator(), "{d}", .{ (try self.digit6()) })) })), (try _imp_std.fmt.allocPrint(self._allocator(), "{d}", .{ (try self.digit7()) })) })), (try _imp_std.fmt.allocPrint(self._allocator(), "{d}", .{ (try self.digit8()) })) }));
            self._m_as_str = _v;
            return _v;
        }
        pub fn digit1(self: *LtrObj) !i32 {
            if (self._m_digit1) |_v|
                return _v;
            var _v: i32 = undefined;
            _v = (self.b1 & 240) >> 4;
            self._m_digit1 = _v;
            return _v;
        }
        pub fn digit2(self: *LtrObj) !i32 {
            if (self._m_digit2) |_v|
                return _v;
            var _v: i32 = undefined;
            _v = self.b1 & 15;
            self._m_digit2 = _v;
            return _v;
        }
        pub fn digit3(self: *LtrObj) !i32 {
            if (self._m_digit3) |_v|
                return _v;
            var _v: i32 = undefined;
            _v = (self.b2 & 240) >> 4;
            self._m_digit3 = _v;
            return _v;
        }
        pub fn digit4(self: *LtrObj) !i32 {
            if (self._m_digit4) |_v|
                return _v;
            var _v: i32 = undefined;
            _v = self.b2 & 15;
            self._m_digit4 = _v;
            return _v;
        }
        pub fn digit5(self: *LtrObj) !i32 {
            if (self._m_digit5) |_v|
                return _v;
            var _v: i32 = undefined;
            _v = (self.b3 & 240) >> 4;
            self._m_digit5 = _v;
            return _v;
        }
        pub fn digit6(self: *LtrObj) !i32 {
            if (self._m_digit6) |_v|
                return _v;
            var _v: i32 = undefined;
            _v = self.b3 & 15;
            self._m_digit6 = _v;
            return _v;
        }
        pub fn digit7(self: *LtrObj) !i32 {
            if (self._m_digit7) |_v|
                return _v;
            var _v: i32 = undefined;
            _v = (self.b4 & 240) >> 4;
            self._m_digit7 = _v;
            return _v;
        }
        pub fn digit8(self: *LtrObj) !i32 {
            if (self._m_digit8) |_v|
                return _v;
            var _v: i32 = undefined;
            _v = self.b4 & 15;
            self._m_digit8 = _v;
            return _v;
        }
        _m_as_int: ?i32 = null,
        _m_as_str: ?[]const u8 = null,
        _m_digit1: ?i32 = null,
        _m_digit2: ?i32 = null,
        _m_digit3: ?i32 = null,
        _m_digit4: ?i32 = null,
        _m_digit5: ?i32 = null,
        _m_digit6: ?i32 = null,
        _m_digit7: ?i32 = null,
        _m_digit8: ?i32 = null,
        b1: u8 = undefined,
        b2: u8 = undefined,
        b3: u8 = undefined,
        b4: u8 = undefined,
        _root: ?*BcdUserTypeBe,
        _parent: ?*BcdUserTypeBe,
        _arena: *_imp_std.heap.ArenaAllocator,
        _io: *_imp_kaitai_struct.KaitaiStream,
    };
    pub const RtlObj = struct {
        pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*BcdUserTypeBe, _root: ?*BcdUserTypeBe) !*RtlObj {
            const self = try _arena.allocator().create(RtlObj);
            self.* = .{
                ._arena = _arena,
                ._io = _io,
                ._parent = _parent,
                ._root = _root,
            };
            try self._read();
            return self;
        }
        fn _allocator(self: *const RtlObj) _imp_std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *RtlObj) !void {
            self.b1 = try self._io.readU1();
            self.b2 = try self._io.readU1();
            self.b3 = try self._io.readU1();
            self.b4 = try self._io.readU1();
        }
        pub fn asInt(self: *RtlObj) !i32 {
            if (self._m_as_int) |_v|
                return _v;
            var _v: i32 = undefined;
            _v = (((((((try self.digit1()) * 1 + (try self.digit2()) * 10) + (try self.digit3()) * 100) + (try self.digit4()) * 1000) + (try self.digit5()) * 10000) + (try self.digit6()) * 100000) + (try self.digit7()) * 1000000) + (try self.digit8()) * 10000000;
            self._m_as_int = _v;
            return _v;
        }
        pub fn asStr(self: *RtlObj) ![]const u8 {
            if (self._m_as_str) |_v|
                return _v;
            var _v: []const u8 = undefined;
            _v = (try _imp_std.mem.concat(self._allocator(), u8, &[_][]const u8{ (try _imp_std.mem.concat(self._allocator(), u8, &[_][]const u8{ (try _imp_std.mem.concat(self._allocator(), u8, &[_][]const u8{ (try _imp_std.mem.concat(self._allocator(), u8, &[_][]const u8{ (try _imp_std.mem.concat(self._allocator(), u8, &[_][]const u8{ (try _imp_std.mem.concat(self._allocator(), u8, &[_][]const u8{ (try _imp_std.mem.concat(self._allocator(), u8, &[_][]const u8{ (try _imp_std.fmt.allocPrint(self._allocator(), "{d}", .{ (try self.digit8()) })), (try _imp_std.fmt.allocPrint(self._allocator(), "{d}", .{ (try self.digit7()) })) })), (try _imp_std.fmt.allocPrint(self._allocator(), "{d}", .{ (try self.digit6()) })) })), (try _imp_std.fmt.allocPrint(self._allocator(), "{d}", .{ (try self.digit5()) })) })), (try _imp_std.fmt.allocPrint(self._allocator(), "{d}", .{ (try self.digit4()) })) })), (try _imp_std.fmt.allocPrint(self._allocator(), "{d}", .{ (try self.digit3()) })) })), (try _imp_std.fmt.allocPrint(self._allocator(), "{d}", .{ (try self.digit2()) })) })), (try _imp_std.fmt.allocPrint(self._allocator(), "{d}", .{ (try self.digit1()) })) }));
            self._m_as_str = _v;
            return _v;
        }
        pub fn digit1(self: *RtlObj) !i32 {
            if (self._m_digit1) |_v|
                return _v;
            var _v: i32 = undefined;
            _v = (self.b1 & 240) >> 4;
            self._m_digit1 = _v;
            return _v;
        }
        pub fn digit2(self: *RtlObj) !i32 {
            if (self._m_digit2) |_v|
                return _v;
            var _v: i32 = undefined;
            _v = self.b1 & 15;
            self._m_digit2 = _v;
            return _v;
        }
        pub fn digit3(self: *RtlObj) !i32 {
            if (self._m_digit3) |_v|
                return _v;
            var _v: i32 = undefined;
            _v = (self.b2 & 240) >> 4;
            self._m_digit3 = _v;
            return _v;
        }
        pub fn digit4(self: *RtlObj) !i32 {
            if (self._m_digit4) |_v|
                return _v;
            var _v: i32 = undefined;
            _v = self.b2 & 15;
            self._m_digit4 = _v;
            return _v;
        }
        pub fn digit5(self: *RtlObj) !i32 {
            if (self._m_digit5) |_v|
                return _v;
            var _v: i32 = undefined;
            _v = (self.b3 & 240) >> 4;
            self._m_digit5 = _v;
            return _v;
        }
        pub fn digit6(self: *RtlObj) !i32 {
            if (self._m_digit6) |_v|
                return _v;
            var _v: i32 = undefined;
            _v = self.b3 & 15;
            self._m_digit6 = _v;
            return _v;
        }
        pub fn digit7(self: *RtlObj) !i32 {
            if (self._m_digit7) |_v|
                return _v;
            var _v: i32 = undefined;
            _v = (self.b4 & 240) >> 4;
            self._m_digit7 = _v;
            return _v;
        }
        pub fn digit8(self: *RtlObj) !i32 {
            if (self._m_digit8) |_v|
                return _v;
            var _v: i32 = undefined;
            _v = self.b4 & 15;
            self._m_digit8 = _v;
            return _v;
        }
        _m_as_int: ?i32 = null,
        _m_as_str: ?[]const u8 = null,
        _m_digit1: ?i32 = null,
        _m_digit2: ?i32 = null,
        _m_digit3: ?i32 = null,
        _m_digit4: ?i32 = null,
        _m_digit5: ?i32 = null,
        _m_digit6: ?i32 = null,
        _m_digit7: ?i32 = null,
        _m_digit8: ?i32 = null,
        b1: u8 = undefined,
        b2: u8 = undefined,
        b3: u8 = undefined,
        b4: u8 = undefined,
        _root: ?*BcdUserTypeBe,
        _parent: ?*BcdUserTypeBe,
        _arena: *_imp_std.heap.ArenaAllocator,
        _io: *_imp_kaitai_struct.KaitaiStream,
    };
    ltr: *LtrObj = undefined,
    rtl: *RtlObj = undefined,
    leading_zero_ltr: *LeadingZeroLtrObj = undefined,
    _root: ?*BcdUserTypeBe,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
