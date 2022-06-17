-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

ValidFailExpr = class.class(KaitaiStruct)

function ValidFailExpr:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function ValidFailExpr:_read()
  self.foo = self._io:read_u1()
  local _ = self.foo
  if not(_ == 1) then
    error("ValidationExprError")
  end
  self.bar = self._io:read_s2le()
  local _ = self.bar
  if not( ((_ < -190) or (_ > -190)) ) then
    error("ValidationExprError")
  end
end


