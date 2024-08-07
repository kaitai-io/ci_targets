-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

ValidFailRepeatInst = class.class(KaitaiStruct)

function ValidFailRepeatInst:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function ValidFailRepeatInst:_read()
  if #self.inst == 0 then
    self.a = self._io:read_bytes(0)
  end
end

ValidFailRepeatInst.property.inst = {}
function ValidFailRepeatInst.property.inst:get()
  if self._m_inst ~= nil then
    return self._m_inst
  end

  local _pos = self._io:pos()
  self._io:seek(0)
  self._m_inst = {}
  local i = 0
  while not self._io:is_eof() do
    self._m_inst[i + 1] = self._io:read_u4be()
    if not(self._m_inst[i + 1] == 305419896) then
      error("not equal, expected " ..  305419896 .. ", but got " .. self._m_inst[i + 1])
    end
    i = i + 1
  end
  self._io:seek(_pos)
  return self._m_inst
end


