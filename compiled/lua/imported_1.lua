-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

require("imported_2")
Imported1 = class.class(KaitaiStruct)

function Imported1:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function Imported1:_read()
  self.one = self._io:read_u1()
  self.two = Imported2(self._io)
end


