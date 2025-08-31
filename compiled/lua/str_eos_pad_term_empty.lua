-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local stringstream = require("string_stream")
local str_decode = require("string_decode")

StrEosPadTermEmpty = class.class(KaitaiStruct)

function StrEosPadTermEmpty:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function StrEosPadTermEmpty:_read()
  self._raw_str_pad = self._io:read_bytes(20)
  local _io = KaitaiStream(stringstream(self._raw_str_pad))
  self.str_pad = StrEosPadTermEmpty.StrPadType(_io, self, self._root)
  self._raw_str_term = self._io:read_bytes(20)
  local _io = KaitaiStream(stringstream(self._raw_str_term))
  self.str_term = StrEosPadTermEmpty.StrTermType(_io, self, self._root)
  self._raw_str_term_and_pad = self._io:read_bytes(20)
  local _io = KaitaiStream(stringstream(self._raw_str_term_and_pad))
  self.str_term_and_pad = StrEosPadTermEmpty.StrTermAndPadType(_io, self, self._root)
  self._raw_str_term_include = self._io:read_bytes(20)
  local _io = KaitaiStream(stringstream(self._raw_str_term_include))
  self.str_term_include = StrEosPadTermEmpty.StrTermIncludeType(_io, self, self._root)
end


StrEosPadTermEmpty.StrPadType = class.class(KaitaiStruct)

function StrEosPadTermEmpty.StrPadType:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function StrEosPadTermEmpty.StrPadType:_read()
  self.value = str_decode.decode(KaitaiStream.bytes_strip_right(self._io:read_bytes_full(), 64), "UTF-8")
end


StrEosPadTermEmpty.StrTermAndPadType = class.class(KaitaiStruct)

function StrEosPadTermEmpty.StrTermAndPadType:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function StrEosPadTermEmpty.StrTermAndPadType:_read()
  self.value = str_decode.decode(KaitaiStream.bytes_terminate(KaitaiStream.bytes_strip_right(self._io:read_bytes_full(), 43), 64, false), "UTF-8")
end


StrEosPadTermEmpty.StrTermIncludeType = class.class(KaitaiStruct)

function StrEosPadTermEmpty.StrTermIncludeType:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function StrEosPadTermEmpty.StrTermIncludeType:_read()
  self.value = str_decode.decode(KaitaiStream.bytes_terminate(self._io:read_bytes_full(), 64, true), "UTF-8")
end


StrEosPadTermEmpty.StrTermType = class.class(KaitaiStruct)

function StrEosPadTermEmpty.StrTermType:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function StrEosPadTermEmpty.StrTermType:_read()
  self.value = str_decode.decode(KaitaiStream.bytes_terminate(self._io:read_bytes_full(), 64, false), "UTF-8")
end


