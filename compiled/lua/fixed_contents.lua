-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

FixedContents = class.class(KaitaiStruct)

function FixedContents:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function FixedContents:_read()
  self.normal = self._io:read_bytes(6)
  if not(self.normal == "\080\065\067\075\045\049") then
    error("not equal, expected " ..  "\080\065\067\075\045\049" .. ", but got " .. self.normal)
  end
  self.high_bit_8 = self._io:read_bytes(2)
  if not(self.high_bit_8 == "\255\255") then
    error("not equal, expected " ..  "\255\255" .. ", but got " .. self.high_bit_8)
  end
end


