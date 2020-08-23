-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local str_decode = require("string_decode")

RepeatNStrzDouble = class.class(KaitaiStruct)

function RepeatNStrzDouble:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function RepeatNStrzDouble:_read()
  self.qty = self._io:read_u4le()
  self.lines1 = {}
  for i = 0, math.floor(self.qty / 2) - 1 do
    self.lines1[i + 1] = str_decode.decode(self._io:read_bytes_term(0, false, true, true), "UTF-8")
  end
  self.lines2 = {}
  for i = 0, math.floor(self.qty / 2) - 1 do
    self.lines2[i + 1] = str_decode.decode(self._io:read_bytes_term(0, false, true, true), "UTF-8")
  end
end


