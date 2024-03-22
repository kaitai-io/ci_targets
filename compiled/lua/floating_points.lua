-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

FloatingPoints = class.class(KaitaiStruct)

function FloatingPoints:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function FloatingPoints:_read()
  self.single_value = self._io:read_f4le()
  self.double_value = self._io:read_f8le()
  self.single_value_be = self._io:read_f4be()
  self.double_value_be = self._io:read_f8be()
  self.approximate_value = self._io:read_f4le()
end

FloatingPoints.property.double_value_plus_float = {}
function FloatingPoints.property.double_value_plus_float:get()
  if self._m_double_value_plus_float ~= nil then
    return self._m_double_value_plus_float
  end

  self._m_double_value_plus_float = self.double_value + 0.05
  return self._m_double_value_plus_float
end

FloatingPoints.property.single_value_plus_float = {}
function FloatingPoints.property.single_value_plus_float:get()
  if self._m_single_value_plus_float ~= nil then
    return self._m_single_value_plus_float
  end

  self._m_single_value_plus_float = self.single_value + 0.5
  return self._m_single_value_plus_float
end

FloatingPoints.property.single_value_plus_int = {}
function FloatingPoints.property.single_value_plus_int:get()
  if self._m_single_value_plus_int ~= nil then
    return self._m_single_value_plus_int
  end

  self._m_single_value_plus_int = self.single_value + 1
  return self._m_single_value_plus_int
end


