-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

EofExceptionBytes = class.class(KaitaiStruct)

function EofExceptionBytes:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function EofExceptionBytes:_read()
  self.buf = self._io:read_bytes(13)
end


