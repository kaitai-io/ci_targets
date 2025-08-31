-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local stringstream = require("string_stream")

TermStruct3 = class.class(KaitaiStruct)

function TermStruct3:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function TermStruct3:_read()
  self._raw_s1 = self._io:read_bytes_term(124, false, false, true)
  local _io = KaitaiStream(stringstream(self._raw_s1))
  self.s1 = TermStruct3.BytesWrapper(_io, self, self._root)
  self._raw_s2 = self._io:read_bytes_term(64, false, false, true)
  local _io = KaitaiStream(stringstream(self._raw_s2))
  self.s2 = TermStruct3.BytesWrapper(_io, self, self._root)
  self._raw_s3 = self._io:read_bytes_term(64, false, true, true)
  local _io = KaitaiStream(stringstream(self._raw_s3))
  self.s3 = TermStruct3.BytesWrapper(_io, self, self._root)
end


TermStruct3.BytesWrapper = class.class(KaitaiStruct)

function TermStruct3.BytesWrapper:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function TermStruct3.BytesWrapper:_read()
  self.value = self._io:read_bytes_full()
end


