-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

BitsByteAlignedEofBe = class.class(KaitaiStruct)

function BitsByteAlignedEofBe:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function BitsByteAlignedEofBe:_read()
  self.prebuf = self._io:read_bytes(8)
  self.bits = self._io:read_bits_int_be(31)
end


