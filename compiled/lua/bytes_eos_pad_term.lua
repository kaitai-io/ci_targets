-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local stringstream = require("string_stream")

BytesEosPadTerm = class.class(KaitaiStruct)

function BytesEosPadTerm:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function BytesEosPadTerm:_read()
  self._raw_str_pad = self._io:read_bytes(20)
  local _io = KaitaiStream(stringstream(self._raw_str_pad))
  self.str_pad = BytesEosPadTerm.StrPadType(_io, self, self._root)
  self._raw_str_term = self._io:read_bytes(20)
  local _io = KaitaiStream(stringstream(self._raw_str_term))
  self.str_term = BytesEosPadTerm.StrTermType(_io, self, self._root)
  self._raw_str_term_and_pad = self._io:read_bytes(20)
  local _io = KaitaiStream(stringstream(self._raw_str_term_and_pad))
  self.str_term_and_pad = BytesEosPadTerm.StrTermAndPadType(_io, self, self._root)
  self._raw_str_term_include = self._io:read_bytes(20)
  local _io = KaitaiStream(stringstream(self._raw_str_term_include))
  self.str_term_include = BytesEosPadTerm.StrTermIncludeType(_io, self, self._root)
end


BytesEosPadTerm.StrPadType = class.class(KaitaiStruct)

function BytesEosPadTerm.StrPadType:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function BytesEosPadTerm.StrPadType:_read()
  self.value = KaitaiStream.bytes_strip_right(self._io:read_bytes_full(), 64)
end


BytesEosPadTerm.StrTermAndPadType = class.class(KaitaiStruct)

function BytesEosPadTerm.StrTermAndPadType:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function BytesEosPadTerm.StrTermAndPadType:_read()
  self.value = KaitaiStream.bytes_terminate(KaitaiStream.bytes_strip_right(self._io:read_bytes_full(), 43), 64, false)
end


BytesEosPadTerm.StrTermIncludeType = class.class(KaitaiStruct)

function BytesEosPadTerm.StrTermIncludeType:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function BytesEosPadTerm.StrTermIncludeType:_read()
  self.value = KaitaiStream.bytes_terminate(self._io:read_bytes_full(), 64, true)
end


BytesEosPadTerm.StrTermType = class.class(KaitaiStruct)

function BytesEosPadTerm.StrTermType:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function BytesEosPadTerm.StrTermType:_read()
  self.value = KaitaiStream.bytes_terminate(self._io:read_bytes_full(), 64, false)
end


