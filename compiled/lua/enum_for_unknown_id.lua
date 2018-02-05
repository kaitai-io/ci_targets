-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local enum = require("enum")

EnumForUnknownId = class.class(KaitaiStruct)

EnumForUnknownId.Animal = enum.Enum {
  dog = 4,
  cat = 7,
  chicken = 12,
}

function EnumForUnknownId:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function EnumForUnknownId:_read()
  self.one = EnumForUnknownId.Animal(self._io:read_u1())
end


