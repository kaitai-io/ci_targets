-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

BitsSimpleLe = class.class(KaitaiStruct)

function BitsSimpleLe:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function BitsSimpleLe:_read()
  self.byte_1 = self._io:read_bits_int_le(8)
  self.byte_2 = self._io:read_bits_int_le(8)
  self.bits_a = self._io:read_bits_int_le(1) ~= 0
  self.bits_b = self._io:read_bits_int_le(3)
  self.bits_c = self._io:read_bits_int_le(4)
  self.large_bits_1 = self._io:read_bits_int_le(10)
  self.spacer = self._io:read_bits_int_le(3)
  self.large_bits_2 = self._io:read_bits_int_le(11)
  self.normal_s2 = self._io:read_s2be()
  self.byte_8_9_10 = self._io:read_bits_int_le(24)
  self.byte_11_to_14 = self._io:read_bits_int_le(32)
  self.byte_15_to_19 = self._io:read_bits_int_le(40)
  self.byte_20_to_27 = self._io:read_bits_int_le(64)
end

BitsSimpleLe.property.test_if_b1 = {}
function BitsSimpleLe.property.test_if_b1:get()
  if self._m_test_if_b1 ~= nil then
    return self._m_test_if_b1
  end

  if self.bits_a == true then
    self._m_test_if_b1 = 123
  end
  return self._m_test_if_b1
end


