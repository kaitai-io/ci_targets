-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

NestedTypes = class.class(KaitaiStruct)

function NestedTypes:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function NestedTypes:_read()
  self.one = NestedTypes.SubtypeA(self._io, self, self._root)
  self.two = NestedTypes.SubtypeB(self._io, self, self._root)
end


NestedTypes.SubtypeA = class.class(KaitaiStruct)

function NestedTypes.SubtypeA:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function NestedTypes.SubtypeA:_read()
  self.typed_at_root = NestedTypes.SubtypeB(self._io, self, self._root)
  self.typed_here = NestedTypes.SubtypeA.SubtypeC(self._io, self, self._root)
end


NestedTypes.SubtypeA.SubtypeC = class.class(KaitaiStruct)

function NestedTypes.SubtypeA.SubtypeC:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function NestedTypes.SubtypeA.SubtypeC:_read()
  self.value_c = self._io:read_s1()
end


NestedTypes.SubtypeB = class.class(KaitaiStruct)

function NestedTypes.SubtypeB:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function NestedTypes.SubtypeB:_read()
  self.value_b = self._io:read_s1()
end


