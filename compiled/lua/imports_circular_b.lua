-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
require("imports_circular_a")

ImportsCircularB = class.class(KaitaiStruct)

function ImportsCircularB:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function ImportsCircularB:_read()
  self.initial = self._io:read_u1()
  if self.initial == 65 then
    self.back_ref = ImportsCircularA(self._io)
  end
end


