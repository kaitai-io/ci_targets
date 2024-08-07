-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local str_decode = require("string_decode")

TermStrzUtf16V3 = class.class(KaitaiStruct)

function TermStrzUtf16V3:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function TermStrzUtf16V3:_read()
  self.s1 = str_decode.decode(self._io:read_bytes_term_multi("\000\000", false, false, true), "UTF-16LE")
  self.term = self._io:read_u2le()
  self.s2 = str_decode.decode(self._io:read_bytes_term_multi("\000\000", false, false, true), "UTF-16LE")
  self.s3 = str_decode.decode(self._io:read_bytes_term_multi("\000\000", false, true, true), "UTF-16LE")
end


