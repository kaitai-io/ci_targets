-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local stringstream = require("string_stream")

RepeatUntilSized = class.class(KaitaiStruct)

function RepeatUntilSized:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function RepeatUntilSized:_read()
  self._raw_records = {}
  self.records = {}
  local i = 1
  while true do
    _buf = self._io:read_bytes(5)
    self._raw_records[i] = _buf
    local _io = KaitaiStream(stringstream(self._raw_records[#self._raw_records]))
    _ = RepeatUntilSized.Record(_io, self, self._root)
    self.records[i] = _
    if _.marker == 170 then
      break
    end
    i = i + 1
  end
end


RepeatUntilSized.Record = class.class(KaitaiStruct)

function RepeatUntilSized.Record:_init(io, parent, root)
KaitaiStruct._init(self, io)
self._parent = parent
self._root = root or self
self:_read()
end

function RepeatUntilSized.Record:_read()
self.marker = self._io:read_u1()
self.body = self._io:read_u4le()
end


