-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

IfInstances = class.class(KaitaiStruct)

function IfInstances:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function IfInstances:_read()
end

IfInstances.property.never_happens = {}
function IfInstances.property.never_happens:get()
  if self._m_never_happens ~= nil then
    return self._m_never_happens
  end

  if false then
    local _pos = self._io:pos()
    self._io:seek(100500)
    self._m_never_happens = self._io:read_u1()
    self._io:seek(_pos)
  end
  return self._m_never_happens
end


