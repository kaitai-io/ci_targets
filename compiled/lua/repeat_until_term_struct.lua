-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local stringstream = require("string_stream")

RepeatUntilTermStruct = class.class(KaitaiStruct)

function RepeatUntilTermStruct:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function RepeatUntilTermStruct:_read()
  self._raw_records1 = {}
  self.records1 = {}
  local i = 0
  while true do
    local _buf = self._io:read_bytes_term(170, false, true, true)
    self._raw_records1[i + 1] = _buf
    local _io = KaitaiStream(stringstream(self._raw_records1[#self._raw_records1]))
    local _ = RepeatUntilTermStruct.BytesWrapper(_io, self, self._root)
    self.records1[i + 1] = _
    if #_.value == 0 then
      break
    end
    i = i + 1
  end
  self._raw_records2 = {}
  self.records2 = {}
  local i = 0
  while true do
    local _buf = self._io:read_bytes_term(170, true, true, true)
    self._raw_records2[i + 1] = _buf
    local _io = KaitaiStream(stringstream(self._raw_records2[#self._raw_records2]))
    local _ = RepeatUntilTermStruct.BytesWrapper(_io, self, self._root)
    self.records2[i + 1] = _
    if _.value ~= "\170" then
      break
    end
    i = i + 1
  end
  self._raw_records3 = {}
  self.records3 = {}
  local i = 0
  while true do
    local _buf = self._io:read_bytes_term(85, false, false, true)
    self._raw_records3[i + 1] = _buf
    local _io = KaitaiStream(stringstream(self._raw_records3[#self._raw_records3]))
    local _ = RepeatUntilTermStruct.BytesWrapper(_io, self, self._root)
    self.records3[i + 1] = _
    if _.value == self.records1[#self.records1].value then
      break
    end
    i = i + 1
  end
end


RepeatUntilTermStruct.BytesWrapper = class.class(KaitaiStruct)

function RepeatUntilTermStruct.BytesWrapper:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function RepeatUntilTermStruct.BytesWrapper:_read()
  self.value = self._io:read_bytes_full()
end


