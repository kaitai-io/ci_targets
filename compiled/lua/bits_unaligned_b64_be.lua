-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

BitsUnalignedB64Be = class.class(KaitaiStruct)

function BitsUnalignedB64Be:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function BitsUnalignedB64Be:_read()
  self.a = self._io:read_bits_int_be(1) ~= 0
  self.b = self._io:read_bits_int_be(64)
  self.c = self._io:read_bits_int_be(7)
end


