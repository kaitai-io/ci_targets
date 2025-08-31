-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

ValidFailRangeFloat = class.class(KaitaiStruct)

function ValidFailRangeFloat:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function ValidFailRangeFloat:_read()
  self.foo = self._io:read_f4le()
  if not(self.foo >= 0.25) then
    error("ValidationLessThanError")
  end
  if not(self.foo <= 0.375) then
    error("ValidationGreaterThanError")
  end
end


