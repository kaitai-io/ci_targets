-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local enum = require("enum")

EnumDeepLiterals = class.class(KaitaiStruct)

function EnumDeepLiterals:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function EnumDeepLiterals:_read()
  self.pet_1 = EnumDeepLiterals.Container1.Animal(self._io:read_u4le())
  self.pet_2 = EnumDeepLiterals.Container1.Container2.Animal(self._io:read_u4le())
end

EnumDeepLiterals.property.is_pet_1_ok = {}
function EnumDeepLiterals.property.is_pet_1_ok:get()
  if self._m_is_pet_1_ok ~= nil then
    return self._m_is_pet_1_ok
  end

  self._m_is_pet_1_ok = self.pet_1 == EnumDeepLiterals.Container1.Animal.cat
  return self._m_is_pet_1_ok
end

EnumDeepLiterals.property.is_pet_2_ok = {}
function EnumDeepLiterals.property.is_pet_2_ok:get()
  if self._m_is_pet_2_ok ~= nil then
    return self._m_is_pet_2_ok
  end

  self._m_is_pet_2_ok = self.pet_2 == EnumDeepLiterals.Container1.Container2.Animal.hare
  return self._m_is_pet_2_ok
end


EnumDeepLiterals.Container1 = class.class(KaitaiStruct)

EnumDeepLiterals.Container1.Animal = enum.Enum {
  dog = 4,
  cat = 7,
  chicken = 12,
}

function EnumDeepLiterals.Container1:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function EnumDeepLiterals.Container1:_read()
end


EnumDeepLiterals.Container1.Container2 = class.class(KaitaiStruct)

EnumDeepLiterals.Container1.Container2.Animal = enum.Enum {
  canary = 4,
  turtle = 7,
  hare = 12,
}

function EnumDeepLiterals.Container1.Container2:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function EnumDeepLiterals.Container1.Container2:_read()
end


