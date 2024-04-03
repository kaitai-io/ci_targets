-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local utils = require("utils")

EnumImportLiterals = class.class(KaitaiStruct)

function EnumImportLiterals:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function EnumImportLiterals:_read()
end

EnumImportLiterals.property.pet_1_eq = {}
function EnumImportLiterals.property.pet_1_eq:get()
  if self._m_pet_1_eq ~= nil then
    return self._m_pet_1_eq
  end

  self._m_pet_1_eq = utils.box_unwrap((true) and utils.box_wrap(Enum0.Animal.chicken) or (Enum0.Animal.dog)) == Enum0.Animal.chicken
  return self._m_pet_1_eq
end

EnumImportLiterals.property.pet_1_to_i = {}
function EnumImportLiterals.property.pet_1_to_i:get()
  if self._m_pet_1_to_i ~= nil then
    return self._m_pet_1_to_i
  end

  self._m_pet_1_to_i = Enum0.Animal.cat.value
  return self._m_pet_1_to_i
end

EnumImportLiterals.property.pet_2 = {}
function EnumImportLiterals.property.pet_2:get()
  if self._m_pet_2 ~= nil then
    return self._m_pet_2
  end

  self._m_pet_2 = EnumDeep.Container1.Container2.Animal.hare
  return self._m_pet_2
end


