-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local enum = require("enum")

EnumDeep = class.class(KaitaiStruct)

function EnumDeep:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function EnumDeep:_read()
  self.pet_1 = EnumDeep.Container1.Animal(self._io:read_u4le())
  self.pet_2 = EnumDeep.Container1.Container2.Animal(self._io:read_u4le())
end


EnumDeep.Container1 = class.class(KaitaiStruct)

EnumDeep.Container1.Animal = enum.Enum {
  dog = 4,
  cat = 7,
  chicken = 12,
}

function EnumDeep.Container1:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function EnumDeep.Container1:_read()
end


EnumDeep.Container1.Container2 = class.class(KaitaiStruct)

EnumDeep.Container1.Container2.Animal = enum.Enum {
  canary = 4,
  turtle = 7,
  hare = 12,
}

function EnumDeep.Container1.Container2:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function EnumDeep.Container1.Container2:_read()
end


