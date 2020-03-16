-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

NavParentOverride = class.class(KaitaiStruct)

function NavParentOverride:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function NavParentOverride:_read()
  self.child_size = self._io:read_u1()
  self.child_1 = NavParentOverride.Child(self._io, self, self._root)
  self.mediator_2 = NavParentOverride.Mediator(self._io, self, self._root)
end


NavParentOverride.Mediator = class.class(KaitaiStruct)

function NavParentOverride.Mediator:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function NavParentOverride.Mediator:_read()
  self.child_2 = NavParentOverride.Child(self._io, self._parent, self._root)
end


NavParentOverride.Child = class.class(KaitaiStruct)

function NavParentOverride.Child:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function NavParentOverride.Child:_read()
  self.data = self._io:read_bytes(self._parent.child_size)
end


