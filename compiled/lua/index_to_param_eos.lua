-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local str_decode = require("string_decode")

IndexToParamEos = class.class(KaitaiStruct)

function IndexToParamEos:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function IndexToParamEos:_read()
  self.qty = self._io:read_u4le()
  self.sizes = {}
  for i = 1, self.qty do
    self.sizes[i] = self._io:read_u4le()
  end
  self.blocks = {}
  local i = 1
  while not self._io:is_eof() do
    self.blocks[i] = IndexToParamEos.Block(i, self._io, self, self._root)
    i = i + 1
  end
end


IndexToParamEos.Block = class.class(KaitaiStruct)

function IndexToParamEos.Block:_init(idx, io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self.idx = idx
  self:_read()
end

function IndexToParamEos.Block:_read()
  self.buf = str_decode.decode(self._io:read_bytes(self._root.sizes[self.idx]), "ASCII")
end


