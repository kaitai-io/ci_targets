-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

InstanceInRepeatUntil = class.class(KaitaiStruct)

function InstanceInRepeatUntil:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function InstanceInRepeatUntil:_read()
  self.entries = {}
  local i = 0
  while true do
    local _ = self._io:read_s2le()
    self.entries[i + 1] = _
    if _ == self.until_val then
      break
    end
    i = i + 1
  end
end

InstanceInRepeatUntil.property.until_val = {}
function InstanceInRepeatUntil.property.until_val:get()
  if self._m_until_val ~= nil then
    return self._m_until_val
  end

  local _pos = self._io:pos()
  self._io:seek(self._io:pos() + 12)
  self._m_until_val = self._io:read_s2le()
  self._io:seek(_pos)
  return self._m_until_val
end


