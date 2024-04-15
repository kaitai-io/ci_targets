-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
require("imports_circular_b")

ImportsCircularA = class.class(KaitaiStruct)

function ImportsCircularA:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function ImportsCircularA:_read()
  self.code = self._io:read_u1()
  self.two = ImportsCircularB(self._io)
end


