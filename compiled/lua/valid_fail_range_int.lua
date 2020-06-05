-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

ValidFailRangeInt = class.class(KaitaiStruct)

function ValidFailRangeInt:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function ValidFailRangeInt:_read()
  self.foo = self._io:read_u1()
  if not(self.foo >= 5) then
    error("ValidationLessThanError")
  end
  if not(self.foo <= 10) then
    error("ValidationGreaterThanError")
  end
end


