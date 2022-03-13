-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

BitsSignedResB32Le = class.class(KaitaiStruct)

function BitsSignedResB32Le:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function BitsSignedResB32Le:_read()
  self.a = self._io:read_bits_int_le(32)
end


