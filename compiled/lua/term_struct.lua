-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local stringstream = require("string_stream")

TermStruct = class.class(KaitaiStruct)

function TermStruct:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function TermStruct:_read()
  self._raw_s1 = self._io:read_bytes_term(124, false, true, true)
  local _io = KaitaiStream(stringstream(self._raw_s1))
  self.s1 = TermStruct.BytesWrapper(_io, self, self._root)
  self._raw_s2 = self._io:read_bytes_term(124, false, false, true)
  local _io = KaitaiStream(stringstream(self._raw_s2))
  self.s2 = TermStruct.BytesWrapper(_io, self, self._root)
  self._raw_s3 = self._io:read_bytes_term(64, true, true, true)
  local _io = KaitaiStream(stringstream(self._raw_s3))
  self.s3 = TermStruct.BytesWrapper(_io, self, self._root)
end


TermStruct.BytesWrapper = class.class(KaitaiStruct)

function TermStruct.BytesWrapper:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function TermStruct.BytesWrapper:_read()
  self.value = self._io:read_bytes_full()
end


