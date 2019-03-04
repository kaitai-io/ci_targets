-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local enum = require("enum")

EnumInvalid = class.class(KaitaiStruct)

EnumInvalid.Animal = enum.Enum {
  dog = 102,
  cat = 124,
}

function EnumInvalid:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function EnumInvalid:_read()
  self.pet_1 = EnumInvalid.Animal(self._io:read_u1())
  self.pet_2 = EnumInvalid.Animal(self._io:read_u1())
end


