-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

EofExceptionU4 = class.class(KaitaiStruct)

function EofExceptionU4:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function EofExceptionU4:_read()
  self.prebuf = self._io:read_bytes(9)
  self.fail_int = self._io:read_u4le()
end


