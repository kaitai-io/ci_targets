-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
require("hello_world")
require("cast_to_imported")

ImportsCastToImported = class.class(KaitaiStruct)

function ImportsCastToImported:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function ImportsCastToImported:_read()
  self.hw = HelloWorld(self._io)
  self.two = CastToImported(self.hw, self._io)
end


