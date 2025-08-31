-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

RepeatEosBytesPadTerm = class.class(KaitaiStruct)

function RepeatEosBytesPadTerm:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function RepeatEosBytesPadTerm:_read()
  self.records = {}
  local i = 0
  while not self._io:is_eof() do
    self.records[i + 1] = KaitaiStream.bytes_terminate(KaitaiStream.bytes_strip_right(self._io:read_bytes(5), 170), 85, true)
    i = i + 1
  end
end


