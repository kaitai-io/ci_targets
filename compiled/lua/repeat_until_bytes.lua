-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

RepeatUntilBytes = class.class(KaitaiStruct)

function RepeatUntilBytes:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function RepeatUntilBytes:_read()
  self.records = {}
  local i = 0
  while true do
    local _ = self._io:read_bytes(5)
    self.records[i + 1] = _
    if string.byte(_, 0 + 1) == 170 then
      break
    end
    i = i + 1
  end
end


