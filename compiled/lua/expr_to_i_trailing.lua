-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

ExprToITrailing = class.class(KaitaiStruct)

function ExprToITrailing:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function ExprToITrailing:_read()
end

ExprToITrailing.property.to_i_r10 = {}
function ExprToITrailing.property.to_i_r10:get()
  if self._m_to_i_r10 ~= nil then
    return self._m_to_i_r10
  end

  self._m_to_i_r10 = tonumber("9173abc")
  return self._m_to_i_r10
end

ExprToITrailing.property.to_i_r16 = {}
function ExprToITrailing.property.to_i_r16:get()
  if self._m_to_i_r16 ~= nil then
    return self._m_to_i_r16
  end

  self._m_to_i_r16 = tonumber("9173abc", 16)
  return self._m_to_i_r16
end

ExprToITrailing.property.to_i_garbage = {}
function ExprToITrailing.property.to_i_garbage:get()
  if self._m_to_i_garbage ~= nil then
    return self._m_to_i_garbage
  end

  self._m_to_i_garbage = tonumber("123_.^")
  return self._m_to_i_garbage
end


