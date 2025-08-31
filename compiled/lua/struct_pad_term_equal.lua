-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local stringstream = require("string_stream")

StructPadTermEqual = class.class(KaitaiStruct)

function StructPadTermEqual:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function StructPadTermEqual:_read()
  self._raw_s1 = KaitaiStream.bytes_terminate(KaitaiStream.bytes_strip_right(self._io:read_bytes(20), 64), 64, false)
  local _io = KaitaiStream(stringstream(self._raw_s1))
  self.s1 = StructPadTermEqual.BytesWrapper(_io, self, self._root)
  self._raw_s2 = KaitaiStream.bytes_terminate(KaitaiStream.bytes_strip_right(self._io:read_bytes(20), 43), 64, true)
  local _io = KaitaiStream(stringstream(self._raw_s2))
  self.s2 = StructPadTermEqual.BytesWrapper(_io, self, self._root)
  self._raw_s3 = KaitaiStream.bytes_terminate(KaitaiStream.bytes_strip_right(self._io:read_bytes(20), 43), 43, false)
  local _io = KaitaiStream(stringstream(self._raw_s3))
  self.s3 = StructPadTermEqual.BytesWrapper(_io, self, self._root)
  self._raw_s4 = KaitaiStream.bytes_terminate(KaitaiStream.bytes_strip_right(self._io:read_bytes(20), 46), 46, true)
  local _io = KaitaiStream(stringstream(self._raw_s4))
  self.s4 = StructPadTermEqual.BytesWrapper(_io, self, self._root)
end


StructPadTermEqual.BytesWrapper = class.class(KaitaiStruct)

function StructPadTermEqual.BytesWrapper:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function StructPadTermEqual.BytesWrapper:_read()
  self.value = self._io:read_bytes_full()
end


