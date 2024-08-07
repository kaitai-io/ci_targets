-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

ValidFailRepeatContents = class.class(KaitaiStruct)

function ValidFailRepeatContents:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function ValidFailRepeatContents:_read()
  self.foo = {}
  local i = 0
  while not self._io:is_eof() do
    self.foo[i + 1] = self._io:read_bytes(4)
    if not(self.foo[i + 1] == "\018\052\086\120") then
      error("not equal, expected " ..  "\018\052\086\120" .. ", but got " .. self.foo[i + 1])
    end
    i = i + 1
  end
end


