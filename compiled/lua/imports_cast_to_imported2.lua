-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

require("cast_to_imported2")
require("hello_world")
ImportsCastToImported2 = class.class(KaitaiStruct)

function ImportsCastToImported2:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function ImportsCastToImported2:_read()
  self.hw = HelloWorld(self._io)
  self.two = CastToImported2(self.hw, self._io)
end


