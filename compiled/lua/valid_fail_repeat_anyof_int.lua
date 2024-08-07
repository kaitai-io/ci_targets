-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

ValidFailRepeatAnyofInt = class.class(KaitaiStruct)

function ValidFailRepeatAnyofInt:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function ValidFailRepeatAnyofInt:_read()
  self.foo = {}
  local i = 0
  while not self._io:is_eof() do
    self.foo[i + 1] = self._io:read_u1()
    if not( ((self.foo[i + 1] == 0) or (self.foo[i + 1] == 1) or (self.foo[i + 1] == 65)) ) then
      error("ValidationNotAnyOfError")
    end
    i = i + 1
  end
end


