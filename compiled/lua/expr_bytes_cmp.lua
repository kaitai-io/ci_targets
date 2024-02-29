-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

ExprBytesCmp = class.class(KaitaiStruct)

function ExprBytesCmp:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function ExprBytesCmp:_read()
  self.one = self._io:read_bytes(1)
  self.two = self._io:read_bytes(3)
end

ExprBytesCmp.property.is_eq = {}
function ExprBytesCmp.property.is_eq:get()
  if self._m_is_eq ~= nil then
    return self._m_is_eq
  end

  self._m_is_eq = self.two == self.ack
  return self._m_is_eq
end

ExprBytesCmp.property.is_ne = {}
function ExprBytesCmp.property.is_ne:get()
  if self._m_is_ne ~= nil then
    return self._m_is_ne
  end

  self._m_is_ne = self.two ~= self.ack
  return self._m_is_ne
end

ExprBytesCmp.property.is_gt2 = {}
function ExprBytesCmp.property.is_gt2:get()
  if self._m_is_gt2 ~= nil then
    return self._m_is_gt2
  end

  self._m_is_gt2 = self.hi_val > self.two
  return self._m_is_gt2
end

ExprBytesCmp.property.is_le = {}
function ExprBytesCmp.property.is_le:get()
  if self._m_is_le ~= nil then
    return self._m_is_le
  end

  self._m_is_le = self.two <= self.ack2
  return self._m_is_le
end

ExprBytesCmp.property.ack = {}
function ExprBytesCmp.property.ack:get()
  if self._m_ack ~= nil then
    return self._m_ack
  end

  self._m_ack = "\065\067\075"
  return self._m_ack
end

ExprBytesCmp.property.hi_val = {}
function ExprBytesCmp.property.hi_val:get()
  if self._m_hi_val ~= nil then
    return self._m_hi_val
  end

  self._m_hi_val = "\144\067"
  return self._m_hi_val
end

ExprBytesCmp.property.is_gt = {}
function ExprBytesCmp.property.is_gt:get()
  if self._m_is_gt ~= nil then
    return self._m_is_gt
  end

  self._m_is_gt = self.two > self.ack2
  return self._m_is_gt
end

ExprBytesCmp.property.ack2 = {}
function ExprBytesCmp.property.ack2:get()
  if self._m_ack2 ~= nil then
    return self._m_ack2
  end

  self._m_ack2 = "\065\067\075\050"
  return self._m_ack2
end

ExprBytesCmp.property.is_lt2 = {}
function ExprBytesCmp.property.is_lt2:get()
  if self._m_is_lt2 ~= nil then
    return self._m_is_lt2
  end

  self._m_is_lt2 = self.one < self.two
  return self._m_is_lt2
end

ExprBytesCmp.property.is_lt = {}
function ExprBytesCmp.property.is_lt:get()
  if self._m_is_lt ~= nil then
    return self._m_is_lt
  end

  self._m_is_lt = self.two < self.ack2
  return self._m_is_lt
end

ExprBytesCmp.property.is_ge = {}
function ExprBytesCmp.property.is_ge:get()
  if self._m_is_ge ~= nil then
    return self._m_is_ge
  end

  self._m_is_ge = self.two >= self.ack2
  return self._m_is_ge
end


