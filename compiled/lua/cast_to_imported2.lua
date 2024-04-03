-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

CastToImported2 = class.class(KaitaiStruct)

function CastToImported2:_init(hw_param, io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self.hw_param = hw_param
  self:_read()
end

function CastToImported2:_read()
end

CastToImported2.property.hw = {}
function CastToImported2.property.hw:get()
  if self._m_hw ~= nil then
    return self._m_hw
  end

  self._m_hw = self.hw_param
  return self._m_hw
end


