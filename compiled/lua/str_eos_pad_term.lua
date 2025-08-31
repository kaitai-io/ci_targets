-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local stringstream = require("string_stream")
local str_decode = require("string_decode")

StrEosPadTerm = class.class(KaitaiStruct)

function StrEosPadTerm:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function StrEosPadTerm:_read()
  self._raw_str_pad = self._io:read_bytes(20)
  local _io = KaitaiStream(stringstream(self._raw_str_pad))
  self.str_pad = StrEosPadTerm.StrPadType(_io, self, self._root)
  self._raw_str_term = self._io:read_bytes(20)
  local _io = KaitaiStream(stringstream(self._raw_str_term))
  self.str_term = StrEosPadTerm.StrTermType(_io, self, self._root)
  self._raw_str_term_and_pad = self._io:read_bytes(20)
  local _io = KaitaiStream(stringstream(self._raw_str_term_and_pad))
  self.str_term_and_pad = StrEosPadTerm.StrTermAndPadType(_io, self, self._root)
  self._raw_str_term_include = self._io:read_bytes(20)
  local _io = KaitaiStream(stringstream(self._raw_str_term_include))
  self.str_term_include = StrEosPadTerm.StrTermIncludeType(_io, self, self._root)
end


StrEosPadTerm.StrPadType = class.class(KaitaiStruct)

function StrEosPadTerm.StrPadType:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function StrEosPadTerm.StrPadType:_read()
  self.value = str_decode.decode(KaitaiStream.bytes_strip_right(self._io:read_bytes_full(), 64), "UTF-8")
end


StrEosPadTerm.StrTermAndPadType = class.class(KaitaiStruct)

function StrEosPadTerm.StrTermAndPadType:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function StrEosPadTerm.StrTermAndPadType:_read()
  self.value = str_decode.decode(KaitaiStream.bytes_terminate(KaitaiStream.bytes_strip_right(self._io:read_bytes_full(), 43), 64, false), "UTF-8")
end


StrEosPadTerm.StrTermIncludeType = class.class(KaitaiStruct)

function StrEosPadTerm.StrTermIncludeType:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function StrEosPadTerm.StrTermIncludeType:_read()
  self.value = str_decode.decode(KaitaiStream.bytes_terminate(self._io:read_bytes_full(), 64, true), "UTF-8")
end


StrEosPadTerm.StrTermType = class.class(KaitaiStruct)

function StrEosPadTerm.StrTermType:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function StrEosPadTerm.StrTermType:_read()
  self.value = str_decode.decode(KaitaiStream.bytes_terminate(self._io:read_bytes_full(), 64, false), "UTF-8")
end


