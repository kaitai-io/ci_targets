-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local str_decode = require("string_decode")

ParamsCallExtraParens = class.class(KaitaiStruct)

function ParamsCallExtraParens:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function ParamsCallExtraParens:_read()
  self.buf1 = ParamsCallExtraParens.MyStr1(5, self._io, self, self._root)
end


ParamsCallExtraParens.MyStr1 = class.class(KaitaiStruct)

function ParamsCallExtraParens.MyStr1:_init(len, io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self.len = len
  self:_read()
end

function ParamsCallExtraParens.MyStr1:_read()
  self.body = str_decode.decode(self._io:read_bytes(self.len), "UTF-8")
end


