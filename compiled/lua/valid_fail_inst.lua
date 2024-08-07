-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

ValidFailInst = class.class(KaitaiStruct)

function ValidFailInst:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function ValidFailInst:_read()
  if self.inst >= 0 then
    self.a = self._io:read_u1()
  end
end

ValidFailInst.property.inst = {}
function ValidFailInst.property.inst:get()
  if self._m_inst ~= nil then
    return self._m_inst
  end

  local _pos = self._io:pos()
  self._io:seek(5)
  self._m_inst = self._io:read_u1()
  if not(self._m_inst == 80) then
    error("not equal, expected " ..  80 .. ", but got " .. self._m_inst)
  end
  self._io:seek(_pos)
  return self._m_inst
end


