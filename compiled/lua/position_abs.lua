-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local str_decode = require("string_decode")

PositionAbs = class.class(KaitaiStruct)

function PositionAbs:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function PositionAbs:_read()
  self.index_offset = self._io:read_u4le()
end

PositionAbs.property.index = {}
function PositionAbs.property.index:get()
  if self._m_index ~= nil then
    return self._m_index
  end

  local _pos = self._io:pos()
  self._io:seek(self.index_offset)
  self._m_index = PositionAbs.IndexObj(self._io, self, self._root)
  self._io:seek(_pos)
  return self._m_index
end


PositionAbs.IndexObj = class.class(KaitaiStruct)

function PositionAbs.IndexObj:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function PositionAbs.IndexObj:_read()
  self.entry = str_decode.decode(self._io:read_bytes_term(0, false, true, true), "UTF-8")
end


