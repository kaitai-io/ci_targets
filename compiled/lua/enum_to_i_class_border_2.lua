-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
require("enum_to_i_class_border_1")

EnumToIClassBorder2 = class.class(KaitaiStruct)

function EnumToIClassBorder2:_init(parent, io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self.parent = parent
  self:_read()
end

function EnumToIClassBorder2:_read()
end

EnumToIClassBorder2.property.is_dog = {}
function EnumToIClassBorder2.property.is_dog:get()
  if self._m_is_dog ~= nil then
    return self._m_is_dog
  end

  self._m_is_dog = self.parent.some_dog.value == 4
  return self._m_is_dog
end


