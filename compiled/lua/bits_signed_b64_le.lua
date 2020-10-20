-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

BitsSignedB64Le = class.class(KaitaiStruct)

function BitsSignedB64Le:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function BitsSignedB64Le:_read()
  self.a_num = self._io:read_bits_int_le(63)
  self.a_bit = self._io:read_bits_int_le(1)
  self.b_num = self._io:read_bits_int_le(63)
  self.b_bit = self._io:read_bits_int_le(1)
end


