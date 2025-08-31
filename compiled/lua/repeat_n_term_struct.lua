-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local stringstream = require("string_stream")

RepeatNTermStruct = class.class(KaitaiStruct)

function RepeatNTermStruct:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function RepeatNTermStruct:_read()
  self._raw_records1 = {}
  self.records1 = {}
  for i = 0, 2 - 1 do
    self._raw_records1[i + 1] = self._io:read_bytes_term(170, false, true, true)
    local _io = KaitaiStream(stringstream(self._raw_records1[i + 1]))
    self.records1[i + 1] = RepeatNTermStruct.BytesWrapper(_io, self, self._root)
  end
  self._raw_records2 = {}
  self.records2 = {}
  for i = 0, 2 - 1 do
    self._raw_records2[i + 1] = self._io:read_bytes_term(170, true, true, true)
    local _io = KaitaiStream(stringstream(self._raw_records2[i + 1]))
    self.records2[i + 1] = RepeatNTermStruct.BytesWrapper(_io, self, self._root)
  end
  self._raw_records3 = {}
  self.records3 = {}
  for i = 0, 2 - 1 do
    self._raw_records3[i + 1] = self._io:read_bytes_term(85, false, false, true)
    local _io = KaitaiStream(stringstream(self._raw_records3[i + 1]))
    self.records3[i + 1] = RepeatNTermStruct.BytesWrapper(_io, self, self._root)
  end
end


RepeatNTermStruct.BytesWrapper = class.class(KaitaiStruct)

function RepeatNTermStruct.BytesWrapper:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function RepeatNTermStruct.BytesWrapper:_read()
  self.value = self._io:read_bytes_full()
end


