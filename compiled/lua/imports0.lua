-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

require("hello_world")
Imports0 = class.class(KaitaiStruct)

function Imports0:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function Imports0:_read()
  self.two = self._io:read_u1()
  self.hw = HelloWorld(self._io)
end

Imports0.property.hw_one = {}
function Imports0.property.hw_one:get()
  if self._m_hw_one ~= nil then
    return self._m_hw_one
  end

  self._m_hw_one = self.hw.one
  return self._m_hw_one
end


