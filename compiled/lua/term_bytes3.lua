-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

TermBytes3 = class.class(KaitaiStruct)

function TermBytes3:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function TermBytes3:_read()
  self.s1 = self._io:read_bytes_term(124, false, false, true)
  self.s2 = self._io:read_bytes_term(64, false, false, true)
  self.s3 = self._io:read_bytes_term(64, false, true, true)
end


