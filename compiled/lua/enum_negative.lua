-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local enum = require("enum")

EnumNegative = class.class(KaitaiStruct)

EnumNegative.Constants = enum.Enum {
  negative_one = -1,
  positive_one = 1,
}

function EnumNegative:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function EnumNegative:_read()
  self.f1 = EnumNegative.Constants(self._io:read_s1())
  self.f2 = EnumNegative.Constants(self._io:read_s1())
end


