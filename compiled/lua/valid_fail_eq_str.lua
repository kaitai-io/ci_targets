-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local str_decode = require("string_decode")

ValidFailEqStr = class.class(KaitaiStruct)

function ValidFailEqStr:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function ValidFailEqStr:_read()
  self.foo = str_decode.decode(self._io:read_bytes(4), "ASCII")
  if not(self.foo == "BACK") then
    error("not equal, expected " .. "BACK" .. ", but got " .. self.foo)
  end
end


