-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

ValidFailMinInt = class.class(KaitaiStruct)

function ValidFailMinInt:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function ValidFailMinInt:_read()
  self.foo = self._io:read_u1()
  if not(self.foo >= 123) then
    error("ValidationLessThanError")
  end
end


