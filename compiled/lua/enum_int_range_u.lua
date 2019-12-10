-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local enum = require("enum")

EnumIntRangeU = class.class(KaitaiStruct)

EnumIntRangeU.Constants = enum.Enum {
  zero = 0,
  int_max = 4294967295,
}

function EnumIntRangeU:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function EnumIntRangeU:_read()
  self.f1 = EnumIntRangeU.Constants(self._io:read_u4be())
  self.f2 = EnumIntRangeU.Constants(self._io:read_u4be())
end


