-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

RepeatNStruct = class.class(KaitaiStruct)

function RepeatNStruct:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function RepeatNStruct:_read()
  self.qty = self._io:read_u4le()
  self.chunks = {}
  for i = 0, self.qty - 1 do
    self.chunks[i + 1] = RepeatNStruct.Chunk(self._io, self, self._root)
  end
end


RepeatNStruct.Chunk = class.class(KaitaiStruct)

function RepeatNStruct.Chunk:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function RepeatNStruct.Chunk:_read()
  self.offset = self._io:read_u4le()
  self.len = self._io:read_u4le()
end


