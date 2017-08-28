-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

require("hello_world")
CastToImported = class.class(KaitaiStruct)

function CastToImported:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function CastToImported:_read()
  self.one = HelloWorld(self._io)
end

CastToImported.property.one_casted = {}
function CastToImported.property.one_casted:get()
  if self._m_one_casted ~= nil then
    return self._m_one_casted
  end

  self._m_one_casted = self.one
  return self._m_one_casted
end


