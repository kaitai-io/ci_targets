-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local enum = require("enum")

EnumOfValueInst = class.class(KaitaiStruct)

EnumOfValueInst.Animal = enum.Enum {
  dog = 4,
  cat = 7,
  chicken = 12,
}

function EnumOfValueInst:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function EnumOfValueInst:_read()
  self.pet_1 = EnumOfValueInst.Animal(self._io:read_u4le())
  self.pet_2 = EnumOfValueInst.Animal(self._io:read_u4le())
end

EnumOfValueInst.property.pet_3 = {}
function EnumOfValueInst.property.pet_3:get()
  if self._m_pet_3 ~= nil then
    return self._m_pet_3
  end

  self._m_pet_3 = EnumOfValueInst.Animal((((self.pet_1 == EnumOfValueInst.Animal.cat) and (4)) or (12)))
  return self._m_pet_3
end

EnumOfValueInst.property.pet_4 = {}
function EnumOfValueInst.property.pet_4:get()
  if self._m_pet_4 ~= nil then
    return self._m_pet_4
  end

  self._m_pet_4 = (((self.pet_1 == EnumOfValueInst.Animal.cat) and (EnumOfValueInst.Animal.dog)) or (EnumOfValueInst.Animal.chicken))
  return self._m_pet_4
end


