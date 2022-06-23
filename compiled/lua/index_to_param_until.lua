-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local str_decode = require("string_decode")

IndexToParamUntil = class.class(KaitaiStruct)

function IndexToParamUntil:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function IndexToParamUntil:_read()
  self.qty = self._io:read_u4le()
  self.sizes = {}
  for i = 0, self.qty - 1 do
    self.sizes[i + 1] = self._io:read_u4le()
  end
  self.blocks = {}
  local i = 0
  while true do
    local _ = IndexToParamUntil.Block(i, self._io, self, self._root)
    self.blocks[i + 1] = _
    if self._io:is_eof() then
      break
    end
    i = i + 1
  end
end


IndexToParamUntil.Block = class.class(KaitaiStruct)

function IndexToParamUntil.Block:_init(idx, io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self.idx = idx
  self:_read()
end

function IndexToParamUntil.Block:_read()
  self.buf = str_decode.decode(self._io:read_bytes(self._root.sizes[self.idx + 1]), "ASCII")
end


