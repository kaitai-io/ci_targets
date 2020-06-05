-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

ValidFailContents = class.class(KaitaiStruct)

function ValidFailContents:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function ValidFailContents:_read()
  self.foo = self._io:read_bytes(2)
  if not(self.foo == "\081\065") then
    error("not equal, expected " ..  "\081\065" .. ", but got " .. self.foo)
  end
end


