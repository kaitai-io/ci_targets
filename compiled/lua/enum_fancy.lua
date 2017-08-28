-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local enum = require("enum")

EnumFancy = class.class(KaitaiStruct)

EnumFancy.Animal = enum.Enum {
  dog = 4,
  cat = 7,
  chicken = 12,
}

function EnumFancy:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function EnumFancy:_read()
  self.pet_1 = EnumFancy.Animal(self._io:read_u4le())
  self.pet_2 = EnumFancy.Animal(self._io:read_u4le())
end


