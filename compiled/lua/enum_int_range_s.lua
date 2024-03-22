-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local enum = require("enum")

EnumIntRangeS = class.class(KaitaiStruct)

EnumIntRangeS.Constants = enum.Enum {
  int_min = -2147483647 - 1,
  zero = 0,
  int_max = 2147483647,
}

function EnumIntRangeS:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function EnumIntRangeS:_read()
  self.f1 = EnumIntRangeS.Constants(self._io:read_s4be())
  self.f2 = EnumIntRangeS.Constants(self._io:read_s4be())
  self.f3 = EnumIntRangeS.Constants(self._io:read_s4be())
end


