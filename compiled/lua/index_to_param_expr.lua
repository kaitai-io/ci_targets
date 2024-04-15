-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local str_decode = require("string_decode")

IndexToParamExpr = class.class(KaitaiStruct)

function IndexToParamExpr:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function IndexToParamExpr:_read()
  self.qty = self._io:read_u4le()
  self.sizes = {}
  for i = 0, self.qty - 1 do
    self.sizes[i + 1] = self._io:read_u4le()
  end
  self.blocks = {}
  for i = 0, self.qty - 1 do
    self.blocks[i + 1] = IndexToParamExpr.Block(i, self._io, self, self._root)
  end
end


IndexToParamExpr.Block = class.class(KaitaiStruct)

function IndexToParamExpr.Block:_init(idx, io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self.idx = idx
  self:_read()
end

function IndexToParamExpr.Block:_read()
  self.buf = str_decode.decode(self._io:read_bytes(self._root.sizes[self.idx + 1]), "ASCII")
end


