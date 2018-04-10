-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

PositionInSeq = class.class(KaitaiStruct)

function PositionInSeq:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function PositionInSeq:_read()
  self.numbers = {}
  for i = 1, self.header.qty_numbers do
    self.numbers[i] = self._io:read_u1()
  end
end

PositionInSeq.property.header = {}
function PositionInSeq.property.header:get()
  if self._m_header ~= nil then
    return self._m_header
  end

  local _pos = self._io:pos()
  self._io:seek(16)
  self._m_header = PositionInSeq.HeaderObj(self._io, self, self._root)
  self._io:seek(_pos)
  return self._m_header
end


PositionInSeq.HeaderObj = class.class(KaitaiStruct)

function PositionInSeq.HeaderObj:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function PositionInSeq.HeaderObj:_read()
  self.qty_numbers = self._io:read_u4le()
end


