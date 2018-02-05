-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local enum = require("enum")

BitsEnum = class.class(KaitaiStruct)

BitsEnum.Animal = enum.Enum {
  cat = 0,
  dog = 1,
  horse = 4,
  platypus = 5,
}

function BitsEnum:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function BitsEnum:_read()
  self.one = BitsEnum.Animal(self._io:read_bits_int(4))
  self.two = BitsEnum.Animal(self._io:read_bits_int(8))
  self.three = BitsEnum.Animal(self._io:read_bits_int(1))
end


