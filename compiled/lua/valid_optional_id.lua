-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

ValidOptionalId = class.class(KaitaiStruct)

function ValidOptionalId:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function ValidOptionalId:_read()
  self._unnamed0 = self._io:read_bytes(6)
  if not(self._unnamed0 == "\080\065\067\075\045\049") then
    error("not equal, expected " ..  "\080\065\067\075\045\049" .. ", but got " .. self._unnamed0)
  end
  self._unnamed1 = self._io:read_u1()
  if not(self._unnamed1 == 255) then
    error("not equal, expected " ..  255 .. ", but got " .. self._unnamed1)
  end
  self._unnamed2 = self._io:read_s1()
  local _ = self._unnamed2
  if not(_ == -1) then
    error("ValidationExprError")
  end
end


