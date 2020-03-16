-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

NavParentSwitch = class.class(KaitaiStruct)

function NavParentSwitch:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function NavParentSwitch:_read()
  self.category = self._io:read_u1()
  local _on = self.category
  if _on == 1 then
    self.content = NavParentSwitch.Element1(self._io, self, self._root)
  end
end


NavParentSwitch.Element1 = class.class(KaitaiStruct)

function NavParentSwitch.Element1:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function NavParentSwitch.Element1:_read()
  self.foo = self._io:read_u1()
  self.subelement = NavParentSwitch.Subelement1(self._io, self, self._root)
end


NavParentSwitch.Subelement1 = class.class(KaitaiStruct)

function NavParentSwitch.Subelement1:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function NavParentSwitch.Subelement1:_read()
  if self._parent.foo == 66 then
    self.bar = self._io:read_u1()
  end
end


