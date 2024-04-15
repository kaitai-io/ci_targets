-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
require("imported_and_rel")

ImportsAbsRel = class.class(KaitaiStruct)

function ImportsAbsRel:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function ImportsAbsRel:_read()
  self.one = self._io:read_u1()
  self.two = ImportedAndRel(self._io)
end


