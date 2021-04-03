-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local str_decode = require("string_decode")

TermU1Val = class.class(KaitaiStruct)

function TermU1Val:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function TermU1Val:_read()
  self.foo = self._io:read_bytes_term(227, false, false, true)
  self.bar = str_decode.decode(self._io:read_bytes_term(171, true, true, true), "UTF-8")
end


