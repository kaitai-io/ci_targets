-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

ProcessBytesPadTerm = class.class(KaitaiStruct)

function ProcessBytesPadTerm:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function ProcessBytesPadTerm:_read()
  self._raw_str_pad = KaitaiStream.bytes_strip_right(self._io:read_bytes(20), 64)
  self.str_pad = KaitaiStream.process_xor_one(self._raw_str_pad, 21)
  self._raw_str_term = KaitaiStream.bytes_terminate(self._io:read_bytes(20), 64, false)
  self.str_term = KaitaiStream.process_xor_one(self._raw_str_term, 21)
  self._raw_str_term_and_pad = KaitaiStream.bytes_terminate(KaitaiStream.bytes_strip_right(self._io:read_bytes(20), 43), 64, false)
  self.str_term_and_pad = KaitaiStream.process_xor_one(self._raw_str_term_and_pad, 21)
  self._raw_str_term_include = KaitaiStream.bytes_terminate(self._io:read_bytes(20), 64, true)
  self.str_term_include = KaitaiStream.process_xor_one(self._raw_str_term_include, 21)
end


