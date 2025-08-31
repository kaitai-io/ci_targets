-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local stringstream = require("string_stream")

ProcessStructPadTerm = class.class(KaitaiStruct)

function ProcessStructPadTerm:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function ProcessStructPadTerm:_read()
  self._raw__raw_str_pad = KaitaiStream.bytes_strip_right(self._io:read_bytes(20), 64)
  self._raw_str_pad = KaitaiStream.process_xor_one(self._raw__raw_str_pad, 21)
  local _io = KaitaiStream(stringstream(self._raw_str_pad))
  self.str_pad = ProcessStructPadTerm.BytesWrapper(_io, self, self._root)
  self._raw__raw_str_term = KaitaiStream.bytes_terminate(self._io:read_bytes(20), 64, false)
  self._raw_str_term = KaitaiStream.process_xor_one(self._raw__raw_str_term, 21)
  local _io = KaitaiStream(stringstream(self._raw_str_term))
  self.str_term = ProcessStructPadTerm.BytesWrapper(_io, self, self._root)
  self._raw__raw_str_term_and_pad = KaitaiStream.bytes_terminate(KaitaiStream.bytes_strip_right(self._io:read_bytes(20), 43), 64, false)
  self._raw_str_term_and_pad = KaitaiStream.process_xor_one(self._raw__raw_str_term_and_pad, 21)
  local _io = KaitaiStream(stringstream(self._raw_str_term_and_pad))
  self.str_term_and_pad = ProcessStructPadTerm.BytesWrapper(_io, self, self._root)
  self._raw__raw_str_term_include = KaitaiStream.bytes_terminate(self._io:read_bytes(20), 64, true)
  self._raw_str_term_include = KaitaiStream.process_xor_one(self._raw__raw_str_term_include, 21)
  local _io = KaitaiStream(stringstream(self._raw_str_term_include))
  self.str_term_include = ProcessStructPadTerm.BytesWrapper(_io, self, self._root)
end


ProcessStructPadTerm.BytesWrapper = class.class(KaitaiStruct)

function ProcessStructPadTerm.BytesWrapper:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function ProcessStructPadTerm.BytesWrapper:_read()
  self.value = self._io:read_bytes_full()
end


