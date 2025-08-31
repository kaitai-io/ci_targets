-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

RepeatNBytesPadTerm = class.class(KaitaiStruct)

function RepeatNBytesPadTerm:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function RepeatNBytesPadTerm:_read()
  self.records = {}
  for i = 0, 3 - 1 do
    self.records[i + 1] = KaitaiStream.bytes_terminate(KaitaiStream.bytes_strip_right(self._io:read_bytes(5), 170), 85, true)
  end
end


