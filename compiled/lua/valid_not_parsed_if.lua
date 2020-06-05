-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

ValidNotParsedIf = class.class(KaitaiStruct)

function ValidNotParsedIf:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function ValidNotParsedIf:_read()
  if false then
    self.not_parsed = self._io:read_u1()
    if not(self.not_parsed == 42) then
      error("not equal, expected " ..  42 .. ", but got " .. self.not_parsed)
    end
  end
  if true then
    self.parsed = self._io:read_u1()
    if not(self.parsed == 80) then
      error("not equal, expected " ..  80 .. ", but got " .. self.parsed)
    end
  end
end


