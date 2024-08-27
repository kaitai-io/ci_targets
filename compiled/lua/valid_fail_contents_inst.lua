-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

ValidFailContentsInst = class.class(KaitaiStruct)

function ValidFailContentsInst:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function ValidFailContentsInst:_read()
  if #self.foo == 0 then
    self.a = self._io:read_bytes(0)
  end
end

ValidFailContentsInst.property.foo = {}
function ValidFailContentsInst.property.foo:get()
  if self._m_foo ~= nil then
    return self._m_foo
  end

  local _pos = self._io:pos()
  self._io:seek(0)
  self._m_foo = self._io:read_bytes(2)
  self._io:seek(_pos)
  return self._m_foo
end


