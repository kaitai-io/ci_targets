-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local enum = require("enum")

EnumToIInvalid = class.class(KaitaiStruct)

EnumToIInvalid.Animal = enum.Enum {
  dog = 102,
  cat = 124,
}

function EnumToIInvalid:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function EnumToIInvalid:_read()
  self.pet_1 = EnumToIInvalid.Animal(self._io:read_u1())
  self.pet_2 = EnumToIInvalid.Animal(self._io:read_u1())
end

EnumToIInvalid.property.one_lt_two = {}
function EnumToIInvalid.property.one_lt_two:get()
  if self._m_one_lt_two ~= nil then
    return self._m_one_lt_two
  end

  self._m_one_lt_two = enum.to_int(self.pet_1) < enum.to_int(self.pet_2)
  return self._m_one_lt_two
end

EnumToIInvalid.property.pet_2_eq_int_f = {}
function EnumToIInvalid.property.pet_2_eq_int_f:get()
  if self._m_pet_2_eq_int_f ~= nil then
    return self._m_pet_2_eq_int_f
  end

  self._m_pet_2_eq_int_f = enum.to_int(self.pet_2) == 110
  return self._m_pet_2_eq_int_f
end

EnumToIInvalid.property.pet_2_eq_int_t = {}
function EnumToIInvalid.property.pet_2_eq_int_t:get()
  if self._m_pet_2_eq_int_t ~= nil then
    return self._m_pet_2_eq_int_t
  end

  self._m_pet_2_eq_int_t = enum.to_int(self.pet_2) == 111
  return self._m_pet_2_eq_int_t
end

EnumToIInvalid.property.pet_2_i = {}
function EnumToIInvalid.property.pet_2_i:get()
  if self._m_pet_2_i ~= nil then
    return self._m_pet_2_i
  end

  self._m_pet_2_i = enum.to_int(self.pet_2)
  return self._m_pet_2_i
end

EnumToIInvalid.property.pet_2_i_to_s = {}
function EnumToIInvalid.property.pet_2_i_to_s:get()
  if self._m_pet_2_i_to_s ~= nil then
    return self._m_pet_2_i_to_s
  end

  self._m_pet_2_i_to_s = tostring(enum.to_int(self.pet_2))
  return self._m_pet_2_i_to_s
end

EnumToIInvalid.property.pet_2_mod = {}
function EnumToIInvalid.property.pet_2_mod:get()
  if self._m_pet_2_mod ~= nil then
    return self._m_pet_2_mod
  end

  self._m_pet_2_mod = enum.to_int(self.pet_2) + 32768
  return self._m_pet_2_mod
end


