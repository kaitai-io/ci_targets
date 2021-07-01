-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local str_decode = require("string_decode")

ValidFailRangeStr = class.class(KaitaiStruct)

function ValidFailRangeStr:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function ValidFailRangeStr:_read()
  self.foo = str_decode.decode(self._io:read_bytes(2), "ASCII")
  if not(self.foo >= "P") then
    error("ValidationLessThanError")
  end
  if not(self.foo <= "P1") then
    error("ValidationGreaterThanError")
  end
end


