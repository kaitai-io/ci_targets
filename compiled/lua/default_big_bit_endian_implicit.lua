-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

DefaultBigBitEndianImplicit = class.class(KaitaiStruct)

function DefaultBigBitEndianImplicit:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function DefaultBigBitEndianImplicit:_read()
  self.one = self._io:read_bits_int(20)
end


