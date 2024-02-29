-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local enum = require("enum")

require("enum_to_i_class_border_2")
EnumToIClassBorder1 = class.class(KaitaiStruct)

EnumToIClassBorder1.Animal = enum.Enum {
  dog = 4,
  cat = 7,
  chicken = 12,
}

function EnumToIClassBorder1:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function EnumToIClassBorder1:_read()
  self.pet_1 = EnumToIClassBorder1.Animal(self._io:read_u4le())
  self.pet_2 = EnumToIClassBorder1.Animal(self._io:read_u4le())
end

EnumToIClassBorder1.property.checker = {}
function EnumToIClassBorder1.property.checker:get()
  if self._m_checker ~= nil then
    return self._m_checker
  end

  local _pos = self._io:pos()
  self._io:seek(0)
  self._m_checker = EnumToIClassBorder2(self._root, self._io)
  self._io:seek(_pos)
  return self._m_checker
end

EnumToIClassBorder1.property.some_dog = {}
function EnumToIClassBorder1.property.some_dog:get()
  if self._m_some_dog ~= nil then
    return self._m_some_dog
  end

  self._m_some_dog = EnumToIClassBorder1.Animal(4)
  return self._m_some_dog
end


