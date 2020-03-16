-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

NavParentFalse = class.class(KaitaiStruct)

function NavParentFalse:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function NavParentFalse:_read()
  self.child_size = self._io:read_u1()
  self.element_a = NavParentFalse.ParentA(self._io, self, self._root)
  self.element_b = NavParentFalse.ParentB(self._io, self, self._root)
end


NavParentFalse.ParentA = class.class(KaitaiStruct)

function NavParentFalse.ParentA:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function NavParentFalse.ParentA:_read()
  self.foo = NavParentFalse.Child(self._io, self, self._root)
  self.bar = NavParentFalse.ParentB(self._io, self, self._root)
end


NavParentFalse.ParentB = class.class(KaitaiStruct)

function NavParentFalse.ParentB:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function NavParentFalse.ParentB:_read()
  self.foo = NavParentFalse.Child(self._io, false, self._root)
end


NavParentFalse.Child = class.class(KaitaiStruct)

function NavParentFalse.Child:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function NavParentFalse.Child:_read()
  self.code = self._io:read_u1()
  if self.code == 73 then
    self.more = self._io:read_bytes(self._parent._parent.child_size)
  end
end


