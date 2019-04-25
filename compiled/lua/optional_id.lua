-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

OptionalId = class.class(KaitaiStruct)

function OptionalId:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function OptionalId:_read()
  self._unnamed0 = self._io:read_u1()
  self._unnamed1 = self._io:read_u1()
  self._unnamed2 = self._io:read_bytes(5)
end


