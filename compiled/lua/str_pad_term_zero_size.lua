-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local str_decode = require("string_decode")

StrPadTermZeroSize = class.class(KaitaiStruct)

function StrPadTermZeroSize:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function StrPadTermZeroSize:_read()
  self.str_pad = str_decode.decode(KaitaiStream.bytes_strip_right(self._io:read_bytes(0), 64), "UTF-8")
  self.str_term = str_decode.decode(KaitaiStream.bytes_terminate(self._io:read_bytes(0), 64, false), "UTF-8")
  self.str_term_and_pad = str_decode.decode(KaitaiStream.bytes_terminate(KaitaiStream.bytes_strip_right(self._io:read_bytes(0), 43), 64, false), "UTF-8")
  self.str_term_include = str_decode.decode(KaitaiStream.bytes_terminate(self._io:read_bytes(0), 64, true), "UTF-8")
end


