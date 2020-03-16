-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local enum = require("enum")

Enum0 = class.class(KaitaiStruct)

Enum0.Animal = enum.Enum {
  dog = 4,
  cat = 7,
  chicken = 12,
}

function Enum0:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function Enum0:_read()
  self.pet_1 = Enum0.Animal(self._io:read_u4le())
  self.pet_2 = Enum0.Animal(self._io:read_u4le())
end


