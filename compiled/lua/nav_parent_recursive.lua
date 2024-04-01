-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

NavParentRecursive = class.class(KaitaiStruct)

function NavParentRecursive:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function NavParentRecursive:_read()
  self.value = self._io:read_u1()
  if self.value == 255 then
    self.next = NavParentRecursive(self._io, self, self._root)
  end
end

NavParentRecursive.property.parent_value = {}
function NavParentRecursive.property.parent_value:get()
  if self._m_parent_value ~= nil then
    return self._m_parent_value
  end

  if self.value ~= 255 then
    self._m_parent_value = self._parent.value
  end
  return self._m_parent_value
end


