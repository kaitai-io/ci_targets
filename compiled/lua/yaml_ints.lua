-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

YamlInts = class.class(KaitaiStruct)

function YamlInts:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function YamlInts:_read()
end

YamlInts.property.test_u4_dec = {}
function YamlInts.property.test_u4_dec:get()
  if self._m_test_u4_dec ~= nil then
    return self._m_test_u4_dec
  end

  self._m_test_u4_dec = 4294967295
  return self._m_test_u4_dec
end

YamlInts.property.test_u4_hex = {}
function YamlInts.property.test_u4_hex:get()
  if self._m_test_u4_hex ~= nil then
    return self._m_test_u4_hex
  end

  self._m_test_u4_hex = 4294967295
  return self._m_test_u4_hex
end

YamlInts.property.test_u8_dec = {}
function YamlInts.property.test_u8_dec:get()
  if self._m_test_u8_dec ~= nil then
    return self._m_test_u8_dec
  end

  self._m_test_u8_dec = 18446744073709551615
  return self._m_test_u8_dec
end

YamlInts.property.test_u8_hex = {}
function YamlInts.property.test_u8_hex:get()
  if self._m_test_u8_hex ~= nil then
    return self._m_test_u8_hex
  end

  self._m_test_u8_hex = 18446744073709551615
  return self._m_test_u8_hex
end


