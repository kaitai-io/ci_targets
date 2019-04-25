-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

RepeatEosStruct = class.class(KaitaiStruct)

function RepeatEosStruct:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function RepeatEosStruct:_read()
  self.chunks = {}
  local i = 1
  while not self._io:is_eof() do
    self.chunks[i] = RepeatEosStruct.Chunk(self._io, self, self._root)
    i = i + 1
  end
end


RepeatEosStruct.Chunk = class.class(KaitaiStruct)

function RepeatEosStruct.Chunk:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function RepeatEosStruct.Chunk:_read()
  self.offset = self._io:read_u4le()
  self.len = self._io:read_u4le()
end


