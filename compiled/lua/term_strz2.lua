-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local str_decode = require("string_decode")

TermStrz2 = class.class(KaitaiStruct)

function TermStrz2:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function TermStrz2:_read()
  self.s1 = str_decode.decode(self._io:read_bytes_term(124, false, true, true), "UTF-8")
  self.s2 = str_decode.decode(self._io:read_bytes_term(124, true, true, true), "UTF-8")
  self.s3 = str_decode.decode(self._io:read_bytes_term(64, false, false, true), "UTF-8")
end


