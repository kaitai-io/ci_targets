-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

BitsSeqEndianCombo = class.class(KaitaiStruct)

function BitsSeqEndianCombo:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function BitsSeqEndianCombo:_read()
  self.be1 = self._io:read_bits_int(6)
  self.be2 = self._io:read_bits_int(10)
  self.le3 = self._io:read_bits_int(8)
  self.be4 = self._io:read_bits_int(8)
  self.le5 = self._io:read_bits_int(5)
  self.le6 = self._io:read_bits_int(6)
  self.le7 = self._io:read_bits_int(5)
  self.be8 = self._io:read_bits_int(1)
end


