-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

ValidFailRepeatEqInt = class.class(KaitaiStruct)

function ValidFailRepeatEqInt:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function ValidFailRepeatEqInt:_read()
  self.foo = {}
  local i = 0
  while not self._io:is_eof() do
    self.foo[i + 1] = self._io:read_u4be()
    if not(self.foo[i + 1] == 305419896) then
      error("not equal, expected " ..  305419896 .. ", but got " .. self.foo[i + 1])
    end
    i = i + 1
  end
end


