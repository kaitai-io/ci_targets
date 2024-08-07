-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local stringstream = require("string_stream")
local str_decode = require("string_decode")

TermStrzUtf16V4 = class.class(KaitaiStruct)

function TermStrzUtf16V4:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function TermStrzUtf16V4:_read()
  self._raw_s1 = self._io:read_bytes(6)
  local _io = KaitaiStream(stringstream(self._raw_s1))
  self.s1 = TermStrzUtf16V4.S1Type(_io, self, self._root)
  self.skip_term1 = self._io:read_bytes(2)
  self._raw_s2 = self._io:read_bytes(6)
  local _io = KaitaiStream(stringstream(self._raw_s2))
  self.s2 = TermStrzUtf16V4.S2Type(_io, self, self._root)
  self.skip_term2 = self._io:read_bytes(2)
  self._raw_s3 = self._io:read_bytes(6)
  local _io = KaitaiStream(stringstream(self._raw_s3))
  self.s3 = TermStrzUtf16V4.S3Type(_io, self, self._root)
end


TermStrzUtf16V4.S1Type = class.class(KaitaiStruct)

function TermStrzUtf16V4.S1Type:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function TermStrzUtf16V4.S1Type:_read()
  self.value = str_decode.decode(self._io:read_bytes_term_multi("\000\000", false, true, false), "UTF-16LE")
end


TermStrzUtf16V4.S2Type = class.class(KaitaiStruct)

function TermStrzUtf16V4.S2Type:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function TermStrzUtf16V4.S2Type:_read()
  self.value = str_decode.decode(self._io:read_bytes_term_multi("\000\000", false, false, false), "UTF-16LE")
end


TermStrzUtf16V4.S3Type = class.class(KaitaiStruct)

function TermStrzUtf16V4.S3Type:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function TermStrzUtf16V4.S3Type:_read()
  self.value = str_decode.decode(self._io:read_bytes_term_multi("\000\000", true, true, false), "UTF-16LE")
end


