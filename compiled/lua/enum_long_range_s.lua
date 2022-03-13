-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local enum = require("enum")

EnumLongRangeS = class.class(KaitaiStruct)

EnumLongRangeS.Constants = enum.Enum {
  long_min = (-9223372036854775807 - 1),
  int_below_min = -2147483649,
  int_min = (-2147483647 - 1),
  zero = 0,
  int_max = 2147483647,
  int_over_max = 2147483648,
  long_max = 9223372036854775807,
}

function EnumLongRangeS:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function EnumLongRangeS:_read()
  self.f1 = EnumLongRangeS.Constants(self._io:read_s8be())
  self.f2 = EnumLongRangeS.Constants(self._io:read_s8be())
  self.f3 = EnumLongRangeS.Constants(self._io:read_s8be())
  self.f4 = EnumLongRangeS.Constants(self._io:read_s8be())
  self.f5 = EnumLongRangeS.Constants(self._io:read_s8be())
  self.f6 = EnumLongRangeS.Constants(self._io:read_s8be())
  self.f7 = EnumLongRangeS.Constants(self._io:read_s8be())
end


