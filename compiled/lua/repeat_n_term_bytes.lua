-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

RepeatNTermBytes = class.class(KaitaiStruct)

function RepeatNTermBytes:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function RepeatNTermBytes:_read()
  self.records1 = {}
  for i = 0, 2 - 1 do
    self.records1[i + 1] = self._io:read_bytes_term(170, false, true, true)
  end
  self.records2 = {}
  for i = 0, 2 - 1 do
    self.records2[i + 1] = self._io:read_bytes_term(170, true, true, true)
  end
  self.records3 = {}
  for i = 0, 2 - 1 do
    self.records3[i + 1] = self._io:read_bytes_term(85, false, false, true)
  end
end


