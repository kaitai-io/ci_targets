-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

RepeatNBytes = class.class(KaitaiStruct)

function RepeatNBytes:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function RepeatNBytes:_read()
  self.records = {}
  for i = 0, 3 - 1 do
    self.records[i + 1] = self._io:read_bytes(5)
  end
end


