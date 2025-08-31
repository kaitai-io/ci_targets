-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
require("my_custom_fx")
local stringstream = require("string_stream")

ProcessTermStruct = class.class(KaitaiStruct)

function ProcessTermStruct:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function ProcessTermStruct:_read()
  self._raw__raw_s1 = self._io:read_bytes_term(124, false, true, true)
  local _process__raw__raw_s1 = MyCustomFx(32, false, "\000")
  self._raw_s1 = _process__raw__raw_s1:decode(self._raw__raw_s1)
  local _io = KaitaiStream(stringstream(self._raw_s1))
  self.s1 = ProcessTermStruct.BytesWrapper(_io, self, self._root)
  self._raw__raw_s2 = self._io:read_bytes_term(124, false, false, true)
  local _process__raw__raw_s2 = MyCustomFx(32, false, "\000")
  self._raw_s2 = _process__raw__raw_s2:decode(self._raw__raw_s2)
  local _io = KaitaiStream(stringstream(self._raw_s2))
  self.s2 = ProcessTermStruct.BytesWrapper(_io, self, self._root)
  self._raw__raw_s3 = self._io:read_bytes_term(64, true, true, true)
  local _process__raw__raw_s3 = MyCustomFx(32, false, "\000")
  self._raw_s3 = _process__raw__raw_s3:decode(self._raw__raw_s3)
  local _io = KaitaiStream(stringstream(self._raw_s3))
  self.s3 = ProcessTermStruct.BytesWrapper(_io, self, self._root)
end


ProcessTermStruct.BytesWrapper = class.class(KaitaiStruct)

function ProcessTermStruct.BytesWrapper:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function ProcessTermStruct.BytesWrapper:_read()
  self.value = self._io:read_bytes_full()
end


