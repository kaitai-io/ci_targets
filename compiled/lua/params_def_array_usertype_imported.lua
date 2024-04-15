-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
require("hello_world")

ParamsDefArrayUsertypeImported = class.class(KaitaiStruct)

function ParamsDefArrayUsertypeImported:_init(hws_param, io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self.hws_param = hws_param
  self:_read()
end

function ParamsDefArrayUsertypeImported:_read()
end

ParamsDefArrayUsertypeImported.property.hw0_one = {}
function ParamsDefArrayUsertypeImported.property.hw0_one:get()
  if self._m_hw0_one ~= nil then
    return self._m_hw0_one
  end

  self._m_hw0_one = self.hws_param[0 + 1].one
  return self._m_hw0_one
end

ParamsDefArrayUsertypeImported.property.hw1_one = {}
function ParamsDefArrayUsertypeImported.property.hw1_one:get()
  if self._m_hw1_one ~= nil then
    return self._m_hw1_one
  end

  self._m_hw1_one = self.hws_param[1 + 1].one
  return self._m_hw1_one
end


