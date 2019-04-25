-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local str_decode = require("string_decode")

ParamsCallShort = class.class(KaitaiStruct)

function ParamsCallShort:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function ParamsCallShort:_read()
  self.buf1 = ParamsCallShort.MyStr1(5, self._io, self, self._root)
  self.buf2 = ParamsCallShort.MyStr2((2 + 3), true, self._io, self, self._root)
end


ParamsCallShort.MyStr1 = class.class(KaitaiStruct)

function ParamsCallShort.MyStr1:_init(len, io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self.len = len
  self:_read()
end

function ParamsCallShort.MyStr1:_read()
  self.body = str_decode.decode(self._io:read_bytes(self.len), "UTF-8")
end


ParamsCallShort.MyStr2 = class.class(KaitaiStruct)

function ParamsCallShort.MyStr2:_init(len, has_trailer, io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self.len = len
  self.has_trailer = has_trailer
  self:_read()
end

function ParamsCallShort.MyStr2:_read()
  self.body = str_decode.decode(self._io:read_bytes(self.len), "UTF-8")
  if self.has_trailer then
    self.trailer = self._io:read_u1()
  end
end


