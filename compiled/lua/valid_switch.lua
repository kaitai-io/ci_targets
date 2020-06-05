-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

ValidSwitch = class.class(KaitaiStruct)

function ValidSwitch:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function ValidSwitch:_read()
  self.a = self._io:read_u1()
  if not(self.a == 80) then
    error("not equal, expected " ..  80 .. ", but got " .. self.a)
  end
  local _on = self.a
  if _on == 80 then
    self.b = self._io:read_u2le()
  else
    self.b = self._io:read_u2be()
  end
  if not(self.b == 17217) then
    error("not equal, expected " ..  17217 .. ", but got " .. self.b)
  end
end


