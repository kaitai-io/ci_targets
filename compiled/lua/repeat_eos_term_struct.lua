-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local stringstream = require("string_stream")

RepeatEosTermStruct = class.class(KaitaiStruct)

function RepeatEosTermStruct:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function RepeatEosTermStruct:_read()
  self._raw_records = {}
  self.records = {}
  local i = 0
  while not self._io:is_eof() do
    self._raw_records[i + 1] = self._io:read_bytes_term(178, true, true, true)
    local _io = KaitaiStream(stringstream(self._raw_records[#self._raw_records]))
    self.records[i + 1] = RepeatEosTermStruct.BytesWrapper(_io, self, self._root)
    i = i + 1
  end
end


RepeatEosTermStruct.BytesWrapper = class.class(KaitaiStruct)

function RepeatEosTermStruct.BytesWrapper:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function RepeatEosTermStruct.BytesWrapper:_read()
  self.value = self._io:read_bytes_full()
end


