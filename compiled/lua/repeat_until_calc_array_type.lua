-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local stringstream = require("string_stream")

RepeatUntilCalcArrayType = class.class(KaitaiStruct)

function RepeatUntilCalcArrayType:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function RepeatUntilCalcArrayType:_read()
  self._raw_records = {}
  self.records = {}
  local i = 0
  while true do
    self._raw_records = self._io:read_bytes(5)
    local _io = KaitaiStream(stringstream(self._raw_records))
    local _ = RepeatUntilCalcArrayType.Record(_io, self, self._root)
    self.records[i + 1] = _
    if _.marker == 170 then
      break
    end
    i = i + 1
  end
end

RepeatUntilCalcArrayType.property.recs_accessor = {}
function RepeatUntilCalcArrayType.property.recs_accessor:get()
  if self._m_recs_accessor ~= nil then
    return self._m_recs_accessor
  end

  self._m_recs_accessor = self.records
  return self._m_recs_accessor
end

RepeatUntilCalcArrayType.property.first_rec = {}
function RepeatUntilCalcArrayType.property.first_rec:get()
  if self._m_first_rec ~= nil then
    return self._m_first_rec
  end

  self._m_first_rec = self.recs_accessor[1]
  return self._m_first_rec
end


RepeatUntilCalcArrayType.Record = class.class(KaitaiStruct)

function RepeatUntilCalcArrayType.Record:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function RepeatUntilCalcArrayType.Record:_read()
  self.marker = self._io:read_u1()
  self.body = self._io:read_u4le()
end


