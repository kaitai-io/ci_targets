-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local str_decode = require("string_decode")

StrPadTermEqual = class.class(KaitaiStruct)

function StrPadTermEqual:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function StrPadTermEqual:_read()
  self.s1 = str_decode.decode(KaitaiStream.bytes_terminate(KaitaiStream.bytes_strip_right(self._io:read_bytes(20), 64), 64, false), "UTF-8")
  self.s2 = str_decode.decode(KaitaiStream.bytes_terminate(KaitaiStream.bytes_strip_right(self._io:read_bytes(20), 43), 64, true), "UTF-8")
  self.s3 = str_decode.decode(KaitaiStream.bytes_terminate(KaitaiStream.bytes_strip_right(self._io:read_bytes(20), 43), 43, false), "UTF-8")
  self.s4 = str_decode.decode(KaitaiStream.bytes_terminate(KaitaiStream.bytes_strip_right(self._io:read_bytes(20), 46), 46, true), "UTF-8")
end


