-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local stringstream = require("string_stream")

BufferedStruct = class.class(KaitaiStruct)

function BufferedStruct:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function BufferedStruct:_read()
  self.len1 = self._io:read_u4le()
  self._raw_block1 = self._io:read_bytes(self.len1)
  local _io = KaitaiStream(stringstream(self._raw_block1))
  self.block1 = BufferedStruct.Block(_io, self, self._root)
  self.len2 = self._io:read_u4le()
  self._raw_block2 = self._io:read_bytes(self.len2)
  local _io = KaitaiStream(stringstream(self._raw_block2))
  self.block2 = BufferedStruct.Block(_io, self, self._root)
  self.finisher = self._io:read_u4le()
end


BufferedStruct.Block = class.class(KaitaiStruct)

function BufferedStruct.Block:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function BufferedStruct.Block:_read()
  self.number1 = self._io:read_u4le()
  self.number2 = self._io:read_u4le()
end


