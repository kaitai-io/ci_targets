-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local enum = require("enum")

EnumToI = class.class(KaitaiStruct)

EnumToI.Animal = enum.Enum {
  dog = 4,
  cat = 7,
  chicken = 12,
}

function EnumToI:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function EnumToI:_read()
  self.pet_1 = EnumToI.Animal(self._io:read_u4le())
  self.pet_2 = EnumToI.Animal(self._io:read_u4le())
end

EnumToI.property.one_lt_two = {}
function EnumToI.property.one_lt_two:get()
  if self._m_one_lt_two ~= nil then
    return self._m_one_lt_two
  end

  self._m_one_lt_two = self.pet_1.value < self.pet_2.value
  return self._m_one_lt_two
end

EnumToI.property.pet_1_eq_int = {}
function EnumToI.property.pet_1_eq_int:get()
  if self._m_pet_1_eq_int ~= nil then
    return self._m_pet_1_eq_int
  end

  self._m_pet_1_eq_int = self.pet_1.value == 7
  return self._m_pet_1_eq_int
end

EnumToI.property.pet_1_i = {}
function EnumToI.property.pet_1_i:get()
  if self._m_pet_1_i ~= nil then
    return self._m_pet_1_i
  end

  self._m_pet_1_i = self.pet_1.value
  return self._m_pet_1_i
end

EnumToI.property.pet_1_i_to_s = {}
function EnumToI.property.pet_1_i_to_s:get()
  if self._m_pet_1_i_to_s ~= nil then
    return self._m_pet_1_i_to_s
  end

  self._m_pet_1_i_to_s = tostring(self.pet_1.value)
  return self._m_pet_1_i_to_s
end

EnumToI.property.pet_1_mod = {}
function EnumToI.property.pet_1_mod:get()
  if self._m_pet_1_mod ~= nil then
    return self._m_pet_1_mod
  end

  self._m_pet_1_mod = (self.pet_1.value + 32768)
  return self._m_pet_1_mod
end

EnumToI.property.pet_2_eq_int = {}
function EnumToI.property.pet_2_eq_int:get()
  if self._m_pet_2_eq_int ~= nil then
    return self._m_pet_2_eq_int
  end

  self._m_pet_2_eq_int = self.pet_2.value == 5
  return self._m_pet_2_eq_int
end


