-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

NestedTypes3 = class.class(KaitaiStruct)

function NestedTypes3:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function NestedTypes3:_read()
  self.a_cc = NestedTypes3.SubtypeA.SubtypeCc(self._io, self, self._root)
  self.a_c_d = NestedTypes3.SubtypeA.SubtypeC.SubtypeD(self._io, self, self._root)
  self.b = NestedTypes3.SubtypeB(self._io, self, self._root)
end


NestedTypes3.SubtypeA = class.class(KaitaiStruct)

function NestedTypes3.SubtypeA:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function NestedTypes3.SubtypeA:_read()
end


NestedTypes3.SubtypeA.SubtypeC = class.class(KaitaiStruct)

function NestedTypes3.SubtypeA.SubtypeC:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function NestedTypes3.SubtypeA.SubtypeC:_read()
end


NestedTypes3.SubtypeA.SubtypeC.SubtypeD = class.class(KaitaiStruct)

function NestedTypes3.SubtypeA.SubtypeC.SubtypeD:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function NestedTypes3.SubtypeA.SubtypeC.SubtypeD:_read()
  self.value_d = self._io:read_s1()
end


NestedTypes3.SubtypeA.SubtypeCc = class.class(KaitaiStruct)

function NestedTypes3.SubtypeA.SubtypeCc:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function NestedTypes3.SubtypeA.SubtypeCc:_read()
  self.value_cc = self._io:read_s1()
end


NestedTypes3.SubtypeB = class.class(KaitaiStruct)

function NestedTypes3.SubtypeB:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function NestedTypes3.SubtypeB:_read()
  self.value_b = self._io:read_s1()
  self.a_cc = NestedTypes3.SubtypeA.SubtypeCc(self._io, self, self._root)
  self.a_c_d = NestedTypes3.SubtypeA.SubtypeC.SubtypeD(self._io, self, self._root)
end


