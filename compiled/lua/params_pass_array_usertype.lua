-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

ParamsPassArrayUsertype = class.class(KaitaiStruct)

function ParamsPassArrayUsertype:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function ParamsPassArrayUsertype:_read()
  self.blocks = {}
  for i = 0, 2 - 1 do
    self.blocks[i + 1] = ParamsPassArrayUsertype.Block(self._io, self, self._root)
  end
  self.pass_blocks = ParamsPassArrayUsertype.ParamType(self.blocks, self._io, self, self._root)
end


ParamsPassArrayUsertype.Block = class.class(KaitaiStruct)

function ParamsPassArrayUsertype.Block:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function ParamsPassArrayUsertype.Block:_read()
  self.foo = self._io:read_u1()
end


ParamsPassArrayUsertype.ParamType = class.class(KaitaiStruct)

function ParamsPassArrayUsertype.ParamType:_init(bar, io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self.bar = bar
  self:_read()
end

function ParamsPassArrayUsertype.ParamType:_read()
  self.one = self._io:read_bytes(self.bar[0 + 1].foo)
  self.two = self._io:read_bytes(self.bar[1 + 1].foo)
end


