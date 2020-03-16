-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

TypeIntUnaryOp = class.class(KaitaiStruct)

function TypeIntUnaryOp:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function TypeIntUnaryOp:_read()
  self.value_s2 = self._io:read_s2le()
  self.value_s8 = self._io:read_s8le()
end

TypeIntUnaryOp.property.unary_s2 = {}
function TypeIntUnaryOp.property.unary_s2:get()
  if self._m_unary_s2 ~= nil then
    return self._m_unary_s2
  end

  self._m_unary_s2 = -(self.value_s2)
  return self._m_unary_s2
end

TypeIntUnaryOp.property.unary_s8 = {}
function TypeIntUnaryOp.property.unary_s8:get()
  if self._m_unary_s8 ~= nil then
    return self._m_unary_s8
  end

  self._m_unary_s8 = -(self.value_s8)
  return self._m_unary_s8
end


