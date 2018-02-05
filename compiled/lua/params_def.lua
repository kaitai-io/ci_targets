-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local str_decode = require("string_decode")

ParamsDef = class.class(KaitaiStruct)

function ParamsDef:_init(len, has_trailer, io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self.len = len
  self.has_trailer = has_trailer
  self:_read()
end

function ParamsDef:_read()
  self.buf = str_decode.decode(self._io:read_bytes(self.len), "UTF-8")
  if self.has_trailer then
    self.trailer = self._io:read_u1()
  end
end


