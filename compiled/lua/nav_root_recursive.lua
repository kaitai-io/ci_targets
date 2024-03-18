-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

NavRootRecursive = class.class(KaitaiStruct)

function NavRootRecursive:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function NavRootRecursive:_read()
  self.value = self._io:read_u1()
  if self.value == 255 then
    self.next = NavRootRecursive(self._io)
  end
end

NavRootRecursive.property.root_value = {}
function NavRootRecursive.property.root_value:get()
  if self._m_root_value ~= nil then
    return self._m_root_value
  end

  self._m_root_value = self._root.value
  return self._m_root_value
end


