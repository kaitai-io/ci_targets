-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local stringstream = require("string_stream")
local str_decode = require("string_decode")

StrEosPadTermEqual = class.class(KaitaiStruct)

function StrEosPadTermEqual:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function StrEosPadTermEqual:_read()
  self._raw_s1 = self._io:read_bytes(20)
  local _io = KaitaiStream(stringstream(self._raw_s1))
  self.s1 = StrEosPadTermEqual.S1Type(_io, self, self._root)
  self._raw_s2 = self._io:read_bytes(20)
  local _io = KaitaiStream(stringstream(self._raw_s2))
  self.s2 = StrEosPadTermEqual.S2Type(_io, self, self._root)
  self._raw_s3 = self._io:read_bytes(20)
  local _io = KaitaiStream(stringstream(self._raw_s3))
  self.s3 = StrEosPadTermEqual.S3Type(_io, self, self._root)
  self._raw_s4 = self._io:read_bytes(20)
  local _io = KaitaiStream(stringstream(self._raw_s4))
  self.s4 = StrEosPadTermEqual.S4Type(_io, self, self._root)
end


StrEosPadTermEqual.S1Type = class.class(KaitaiStruct)

function StrEosPadTermEqual.S1Type:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function StrEosPadTermEqual.S1Type:_read()
  self.value = str_decode.decode(KaitaiStream.bytes_terminate(KaitaiStream.bytes_strip_right(self._io:read_bytes_full(), 64), 64, false), "UTF-8")
end


StrEosPadTermEqual.S2Type = class.class(KaitaiStruct)

function StrEosPadTermEqual.S2Type:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function StrEosPadTermEqual.S2Type:_read()
  self.value = str_decode.decode(KaitaiStream.bytes_terminate(KaitaiStream.bytes_strip_right(self._io:read_bytes_full(), 43), 64, true), "UTF-8")
end


StrEosPadTermEqual.S3Type = class.class(KaitaiStruct)

function StrEosPadTermEqual.S3Type:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function StrEosPadTermEqual.S3Type:_read()
  self.value = str_decode.decode(KaitaiStream.bytes_terminate(KaitaiStream.bytes_strip_right(self._io:read_bytes_full(), 43), 43, false), "UTF-8")
end


StrEosPadTermEqual.S4Type = class.class(KaitaiStruct)

function StrEosPadTermEqual.S4Type:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function StrEosPadTermEqual.S4Type:_read()
  self.value = str_decode.decode(KaitaiStream.bytes_terminate(KaitaiStream.bytes_strip_right(self._io:read_bytes_full(), 46), 46, true), "UTF-8")
end


