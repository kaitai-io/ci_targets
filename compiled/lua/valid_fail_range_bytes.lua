-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

ValidFailRangeBytes = class.class(KaitaiStruct)

function ValidFailRangeBytes:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function ValidFailRangeBytes:_read()
  self.foo = self._io:read_bytes(2)
  if not(self.foo >= "\072\064") then
    error("ValidationLessThanError")
  end
  if not(self.foo <= "\079\126") then
    error("ValidationGreaterThanError")
  end
end


