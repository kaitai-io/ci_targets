-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local enum = require("enum")

ExprEnum = class.class(KaitaiStruct)

ExprEnum.Animal = enum.Enum {
  dog = 4,
  cat = 7,
  chicken = 12,
  boom = 102,
}

function ExprEnum:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function ExprEnum:_read()
  self.one = self._io:read_u1()
end

ExprEnum.property.const_dog = {}
function ExprEnum.property.const_dog:get()
  if self._m_const_dog ~= nil then
    return self._m_const_dog
  end

  self._m_const_dog = ExprEnum.Animal(4)
  return self._m_const_dog
end

ExprEnum.property.derived_boom = {}
function ExprEnum.property.derived_boom:get()
  if self._m_derived_boom ~= nil then
    return self._m_derived_boom
  end

  self._m_derived_boom = ExprEnum.Animal(self.one)
  return self._m_derived_boom
end

ExprEnum.property.derived_dog = {}
function ExprEnum.property.derived_dog:get()
  if self._m_derived_dog ~= nil then
    return self._m_derived_dog
  end

  self._m_derived_dog = ExprEnum.Animal((self.one - 98))
  return self._m_derived_dog
end


