-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

BitsByteAligned = class.class(KaitaiStruct)

function BitsByteAligned:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function BitsByteAligned:_read()
  self.one = self._io:read_bits_int_be(6)
  self.byte_1 = self._io:read_u1()
  self.two = self._io:read_bits_int_be(3)
  self.three = self._io:read_bits_int_be(1) ~= 0
  self.byte_2 = self._io:read_u1()
  self.four = self._io:read_bits_int_be(14)
  self.byte_3 = self._io:read_bytes(1)
  self.full_byte = self._io:read_bits_int_be(8)
  self.byte_4 = self._io:read_u1()
end


