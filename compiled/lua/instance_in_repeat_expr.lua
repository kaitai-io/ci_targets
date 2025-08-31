-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

InstanceInRepeatExpr = class.class(KaitaiStruct)

function InstanceInRepeatExpr:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function InstanceInRepeatExpr:_read()
  self.chunks = {}
  for i = 0, self.num_chunks - 1 do
    self.chunks[i + 1] = InstanceInRepeatExpr.Chunk(self._io, self, self._root)
  end
end

InstanceInRepeatExpr.property.num_chunks = {}
function InstanceInRepeatExpr.property.num_chunks:get()
  if self._m_num_chunks ~= nil then
    return self._m_num_chunks
  end

  local _pos = self._io:pos()
  self._io:seek(self._io:pos() + 16)
  self._m_num_chunks = self._io:read_u4le()
  self._io:seek(_pos)
  return self._m_num_chunks
end


InstanceInRepeatExpr.Chunk = class.class(KaitaiStruct)

function InstanceInRepeatExpr.Chunk:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function InstanceInRepeatExpr.Chunk:_read()
  self.offset = self._io:read_u4le()
  self.len = self._io:read_u4le()
end


