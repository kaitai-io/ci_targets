-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local str_decode = require("string_decode")

RepeatNStrz = class.class(KaitaiStruct)

function RepeatNStrz:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function RepeatNStrz:_read()
  self.qty = self._io:read_u4le()
  self.lines = {}
  for i = 0, self.qty - 1 do
    self.lines[i + 1] = str_decode.decode(self._io:read_bytes_term(0, false, true, true), "UTF-8")
  end
end


