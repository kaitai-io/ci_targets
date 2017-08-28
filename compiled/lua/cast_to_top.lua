-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

CastToTop = class.class(KaitaiStruct)

function CastToTop:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function CastToTop:_read()
  self.code = self._io:read_u1()
end

CastToTop.property.header = {}
function CastToTop.property.header:get()
  if self._m_header ~= nil then
    return self._m_header
  end

  _pos = self._io:pos()
  self._io:seek(1)
  self._m_header = CastToTop(self._io)
  self._io:seek(_pos)
  return self._m_header
end

CastToTop.property.header_casted = {}
function CastToTop.property.header_casted:get()
  if self._m_header_casted ~= nil then
    return self._m_header_casted
  end

  self._m_header_casted = self.header
  return self._m_header_casted
end


