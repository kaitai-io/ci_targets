-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local stringstream = require("string_stream")

TermStruct4 = class.class(KaitaiStruct)

function TermStruct4:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function TermStruct4:_read()
  self._raw_s1 = self._io:read_bytes(3)
  local _io = KaitaiStream(stringstream(self._raw_s1))
  self.s1 = TermStruct4.S1Type(_io, self, self._root)
  self.skip_term1 = self._io:read_u1()
  self._raw_s2 = self._io:read_bytes(3)
  local _io = KaitaiStream(stringstream(self._raw_s2))
  self.s2 = TermStruct4.S2Type(_io, self, self._root)
  self.skip_term2 = self._io:read_u1()
  self._raw_s3 = self._io:read_bytes(3)
  local _io = KaitaiStream(stringstream(self._raw_s3))
  self.s3 = TermStruct4.S3Type(_io, self, self._root)
end


TermStruct4.BytesWrapper = class.class(KaitaiStruct)

function TermStruct4.BytesWrapper:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function TermStruct4.BytesWrapper:_read()
  self.value = self._io:read_bytes_full()
end


TermStruct4.S1Type = class.class(KaitaiStruct)

function TermStruct4.S1Type:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function TermStruct4.S1Type:_read()
  self._raw_value = self._io:read_bytes_term(124, false, true, false)
  local _io = KaitaiStream(stringstream(self._raw_value))
  self.value = TermStruct4.BytesWrapper(_io, self, self._root)
end


TermStruct4.S2Type = class.class(KaitaiStruct)

function TermStruct4.S2Type:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function TermStruct4.S2Type:_read()
  self._raw_value = self._io:read_bytes_term(124, false, false, false)
  local _io = KaitaiStream(stringstream(self._raw_value))
  self.value = TermStruct4.BytesWrapper(_io, self, self._root)
end


TermStruct4.S3Type = class.class(KaitaiStruct)

function TermStruct4.S3Type:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function TermStruct4.S3Type:_read()
  self._raw_value = self._io:read_bytes_term(64, true, true, false)
  local _io = KaitaiStream(stringstream(self._raw_value))
  self.value = TermStruct4.BytesWrapper(_io, self, self._root)
end


