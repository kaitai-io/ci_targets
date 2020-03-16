-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

Debug0 = class.class(KaitaiStruct)

function Debug0:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
end

function Debug0:_read()
  self.one = self._io:read_u1()
  self.array_of_ints = {}
  for i = 1, 3 do
    self.array_of_ints[i] = self._io:read_u1()
  end
  self._unnamed2 = self._io:read_u1()
end


