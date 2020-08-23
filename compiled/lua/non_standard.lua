-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

NonStandard = class.class(KaitaiStruct)

function NonStandard:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function NonStandard:_read()
  self.foo = self._io:read_u1()
  local _on = self.foo
  if _on == 42 then
    self.bar = self._io:read_u2le()
  elseif _on == 43 then
    self.bar = self._io:read_u4le()
  end
end

NonStandard.property.vi = {}
function NonStandard.property.vi:get()
  if self._m_vi ~= nil then
    return self._m_vi
  end

  self._m_vi = self.foo
  return self._m_vi
end

NonStandard.property.pi = {}
function NonStandard.property.pi:get()
  if self._m_pi ~= nil then
    return self._m_pi
  end

  local _pos = self._io:pos()
  self._io:seek(0)
  self._m_pi = self._io:read_u1()
  self._io:seek(_pos)
  return self._m_pi
end


