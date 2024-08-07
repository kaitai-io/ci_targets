-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local str_decode = require("string_decode")

StrPadTermUtf16 = class.class(KaitaiStruct)

function StrPadTermUtf16:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function StrPadTermUtf16:_read()
  self.str_term = str_decode.decode(KaitaiStream.bytes_terminate_multi(self._io:read_bytes(10), "\000\000", false), "UTF-16LE")
  self.str_term_include = str_decode.decode(KaitaiStream.bytes_terminate_multi(self._io:read_bytes(10), "\000\000", true), "UTF-16LE")
  self.str_term_and_pad = str_decode.decode(KaitaiStream.bytes_terminate_multi(KaitaiStream.bytes_strip_right(self._io:read_bytes(9), 43), "\000\000", false), "UTF-16LE")
end


