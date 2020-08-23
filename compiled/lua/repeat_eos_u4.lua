-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

RepeatEosU4 = class.class(KaitaiStruct)

function RepeatEosU4:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function RepeatEosU4:_read()
  self.numbers = {}
  local i = 0
  while not self._io:is_eof() do
    self.numbers[i + 1] = self._io:read_u4le()
    i = i + 1
  end
end


