-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

ValidFailMaxInt = class.class(KaitaiStruct)

function ValidFailMaxInt:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function ValidFailMaxInt:_read()
  self.foo = self._io:read_u1()
  if not(self.foo <= 12) then
    error("ValidationGreaterThanError")
  end
end


