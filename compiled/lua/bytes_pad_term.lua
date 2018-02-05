-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

BytesPadTerm = class.class(KaitaiStruct)

function BytesPadTerm:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function BytesPadTerm:_read()
  self.str_pad = KaitaiStream.bytes_strip_right(self._io:read_bytes(20), 64)
  self.str_term = KaitaiStream.bytes_terminate(self._io:read_bytes(20), 64, false)
  self.str_term_and_pad = KaitaiStream.bytes_terminate(KaitaiStream.bytes_strip_right(self._io:read_bytes(20), 43), 64, false)
  self.str_term_include = KaitaiStream.bytes_terminate(self._io:read_bytes(20), 64, true)
end


