-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local enum = require("enum")

EnumLongRangeU = class.class(KaitaiStruct)

EnumLongRangeU.Constants = enum.Enum {
  zero = 0,
  int_max = 4294967295,
  int_over_max = 4294967296,
  long_max = 9223372036854775807,
}

function EnumLongRangeU:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function EnumLongRangeU:_read()
  self.f1 = EnumLongRangeU.Constants(self._io:read_u8be())
  self.f2 = EnumLongRangeU.Constants(self._io:read_u8be())
  self.f3 = EnumLongRangeU.Constants(self._io:read_u8be())
  self.f4 = EnumLongRangeU.Constants(self._io:read_u8be())
end


