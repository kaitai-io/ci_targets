-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
require("nested_types3")

NestedTypesImport = class.class(KaitaiStruct)

function NestedTypesImport:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function NestedTypesImport:_read()
  self.a_cc = NestedTypes3.SubtypeA.SubtypeCc(self._io)
  self.a_c_d = NestedTypes3.SubtypeA.SubtypeC.SubtypeD(self._io)
  self.b = NestedTypes3.SubtypeB(self._io)
end


