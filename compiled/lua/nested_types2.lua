-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

NestedTypes2 = class.class(KaitaiStruct)

function NestedTypes2:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function NestedTypes2:_read()
  self.one = NestedTypes2.SubtypeA(self._io, self, self._root)
  self.two = NestedTypes2.SubtypeB(self._io, self, self._root)
end


NestedTypes2.SubtypeA = class.class(KaitaiStruct)

function NestedTypes2.SubtypeA:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function NestedTypes2.SubtypeA:_read()
  self.typed_at_root = NestedTypes2.SubtypeB(self._io, self, self._root)
  self.typed_here1 = NestedTypes2.SubtypeA.SubtypeC(self._io, self, self._root)
  self.typed_here2 = NestedTypes2.SubtypeA.SubtypeCc(self._io, self, self._root)
end


NestedTypes2.SubtypeA.SubtypeC = class.class(KaitaiStruct)

function NestedTypes2.SubtypeA.SubtypeC:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function NestedTypes2.SubtypeA.SubtypeC:_read()
  self.value_c = self._io:read_s1()
  self.typed_here = NestedTypes2.SubtypeA.SubtypeC.SubtypeD(self._io, self, self._root)
  self.typed_parent = NestedTypes2.SubtypeA.SubtypeCc(self._io, self, self._root)
  self.typed_root = NestedTypes2.SubtypeB(self._io, self, self._root)
end


NestedTypes2.SubtypeA.SubtypeC.SubtypeD = class.class(KaitaiStruct)

function NestedTypes2.SubtypeA.SubtypeC.SubtypeD:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function NestedTypes2.SubtypeA.SubtypeC.SubtypeD:_read()
  self.value_d = self._io:read_s1()
end


NestedTypes2.SubtypeA.SubtypeCc = class.class(KaitaiStruct)

function NestedTypes2.SubtypeA.SubtypeCc:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function NestedTypes2.SubtypeA.SubtypeCc:_read()
  self.value_cc = self._io:read_s1()
end


NestedTypes2.SubtypeB = class.class(KaitaiStruct)

function NestedTypes2.SubtypeB:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function NestedTypes2.SubtypeB:_read()
  self.value_b = self._io:read_s1()
end


