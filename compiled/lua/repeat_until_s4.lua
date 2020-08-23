-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local str_decode = require("string_decode")

RepeatUntilS4 = class.class(KaitaiStruct)

function RepeatUntilS4:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function RepeatUntilS4:_read()
  self.entries = {}
  local i = 0
  while true do
    _ = self._io:read_s4le()
    self.entries[i + 1] = _
    if _ == -1 then
      break
    end
    i = i + 1
  end
self.afterall = str_decode.decode(self._io:read_bytes_term(0, false, true, true), "ASCII")
end


