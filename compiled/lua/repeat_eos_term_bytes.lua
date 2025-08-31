-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

RepeatEosTermBytes = class.class(KaitaiStruct)

function RepeatEosTermBytes:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function RepeatEosTermBytes:_read()
  self.records = {}
  local i = 0
  while not self._io:is_eof() do
    self.records[i + 1] = self._io:read_bytes_term(178, true, true, true)
    i = i + 1
  end
end


