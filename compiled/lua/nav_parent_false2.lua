-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

NavParentFalse2 = class.class(KaitaiStruct)

function NavParentFalse2:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function NavParentFalse2:_read()
  self.parentless = NavParentFalse2.Child(self._io, nil, self._root)
end


NavParentFalse2.Child = class.class(KaitaiStruct)

function NavParentFalse2.Child:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function NavParentFalse2.Child:_read()
  self.foo = self._io:read_u1()
end


