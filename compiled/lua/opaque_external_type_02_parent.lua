-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
require("opaque_external_type_02_child")

OpaqueExternalType02Parent = class.class(KaitaiStruct)

function OpaqueExternalType02Parent:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function OpaqueExternalType02Parent:_read()
  self.parent = OpaqueExternalType02Parent.ParentObj(self._io, self, self._root)
end


OpaqueExternalType02Parent.ParentObj = class.class(KaitaiStruct)

function OpaqueExternalType02Parent.ParentObj:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function OpaqueExternalType02Parent.ParentObj:_read()
  self.child = OpaqueExternalType02Child(self._io)
end


