-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
require("params_def")

OpaqueWithParam = class.class(KaitaiStruct)

function OpaqueWithParam:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function OpaqueWithParam:_read()
  self.one = ParamsDef(5, true, self._io)
end


