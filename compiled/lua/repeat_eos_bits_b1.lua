-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

RepeatEosBitsB1 = class.class(KaitaiStruct)

function RepeatEosBitsB1:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function RepeatEosBitsB1:_read()
  self.bits = {}
  local i = 0
  while not self._io:is_eof() do
    self.bits[i + 1] = self._io:read_bits_int_be(1) ~= 0
    i = i + 1
  end
end


