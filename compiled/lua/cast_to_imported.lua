-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

CastToImported = class.class(KaitaiStruct)

function CastToImported:_init(hw_param, io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self.hw_param = hw_param
  self:_read()
end

function CastToImported:_read()
end

CastToImported.property.hw_one = {}
function CastToImported.property.hw_one:get()
  if self._m_hw_one ~= nil then
    return self._m_hw_one
  end

  self._m_hw_one = self.hw_param.one
  return self._m_hw_one
end


