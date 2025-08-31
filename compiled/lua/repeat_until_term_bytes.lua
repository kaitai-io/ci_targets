-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

RepeatUntilTermBytes = class.class(KaitaiStruct)

function RepeatUntilTermBytes:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function RepeatUntilTermBytes:_read()
  self.records1 = {}
  local i = 0
  while true do
    local _ = self._io:read_bytes_term(170, false, true, true)
    self.records1[i + 1] = _
    if #_ == 0 then
      break
    end
    i = i + 1
  end
  self.records2 = {}
  local i = 0
  while true do
    local _ = self._io:read_bytes_term(170, true, true, true)
    self.records2[i + 1] = _
    if _ ~= "\170" then
      break
    end
    i = i + 1
  end
  self.records3 = {}
  local i = 0
  while true do
    local _ = self._io:read_bytes_term(85, false, false, true)
    self.records3[i + 1] = _
    if _ == self.records1[#self.records1] then
      break
    end
    i = i + 1
  end
end


