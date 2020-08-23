-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

IntegersDoubleOverflow = class.class(KaitaiStruct)

function IntegersDoubleOverflow:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function IntegersDoubleOverflow:_read()
  self.signed_safe_min_be = self._io:read_s8be()
  self.signed_safe_min_le = self._io:read_s8le()
  self.signed_safe_max_be = self._io:read_s8be()
  self.signed_safe_max_le = self._io:read_s8le()
  self.signed_unsafe_neg_be = self._io:read_s8be()
  self.signed_unsafe_neg_le = self._io:read_s8le()
  self.signed_unsafe_pos_be = self._io:read_s8be()
  self.signed_unsafe_pos_le = self._io:read_s8le()
end

IntegersDoubleOverflow.property.unsigned_safe_max_be = {}
function IntegersDoubleOverflow.property.unsigned_safe_max_be:get()
  if self._m_unsigned_safe_max_be ~= nil then
    return self._m_unsigned_safe_max_be
  end

  local _pos = self._io:pos()
  self._io:seek(16)
  self._m_unsigned_safe_max_be = self._io:read_u8be()
  self._io:seek(_pos)
  return self._m_unsigned_safe_max_be
end

IntegersDoubleOverflow.property.unsigned_safe_max_le = {}
function IntegersDoubleOverflow.property.unsigned_safe_max_le:get()
  if self._m_unsigned_safe_max_le ~= nil then
    return self._m_unsigned_safe_max_le
  end

  local _pos = self._io:pos()
  self._io:seek(24)
  self._m_unsigned_safe_max_le = self._io:read_u8le()
  self._io:seek(_pos)
  return self._m_unsigned_safe_max_le
end

IntegersDoubleOverflow.property.unsigned_unsafe_pos_be = {}
function IntegersDoubleOverflow.property.unsigned_unsafe_pos_be:get()
  if self._m_unsigned_unsafe_pos_be ~= nil then
    return self._m_unsigned_unsafe_pos_be
  end

  local _pos = self._io:pos()
  self._io:seek(48)
  self._m_unsigned_unsafe_pos_be = self._io:read_u8be()
  self._io:seek(_pos)
  return self._m_unsigned_unsafe_pos_be
end

IntegersDoubleOverflow.property.unsigned_unsafe_pos_le = {}
function IntegersDoubleOverflow.property.unsigned_unsafe_pos_le:get()
  if self._m_unsigned_unsafe_pos_le ~= nil then
    return self._m_unsigned_unsafe_pos_le
  end

  local _pos = self._io:pos()
  self._io:seek(56)
  self._m_unsigned_unsafe_pos_le = self._io:read_u8le()
  self._io:seek(_pos)
  return self._m_unsigned_unsafe_pos_le
end


