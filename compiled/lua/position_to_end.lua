-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

PositionToEnd = class.class(KaitaiStruct)

function PositionToEnd:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function PositionToEnd:_read()
end

PositionToEnd.property.index = {}
function PositionToEnd.property.index:get()
  if self._m_index ~= nil then
    return self._m_index
  end

  _pos = self._io:pos()
  self._io:seek((self._io:size() - 8))
  self._m_index = PositionToEnd.IndexObj(self._io, self, self._root)
  self._io:seek(_pos)
  return self._m_index
end


PositionToEnd.IndexObj = class.class(KaitaiStruct)

function PositionToEnd.IndexObj:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function PositionToEnd.IndexObj:_read()
  self.foo = self._io:read_u4le()
  self.bar = self._io:read_u4le()
end


