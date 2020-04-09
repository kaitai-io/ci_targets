-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local str_decode = require("string_decode")

NestedTypeParam = class.class(KaitaiStruct)

function NestedTypeParam:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function NestedTypeParam:_read()
  self.main_seq = NestedTypeParam.Nested.MyType(5, self._io, self, self._root)
end


NestedTypeParam.Nested = class.class(KaitaiStruct)

function NestedTypeParam.Nested:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function NestedTypeParam.Nested:_read()
end


NestedTypeParam.Nested.MyType = class.class(KaitaiStruct)

function NestedTypeParam.Nested.MyType:_init(my_len, io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self.my_len = my_len
  self:_read()
end

function NestedTypeParam.Nested.MyType:_read()
  self.body = str_decode.decode(self._io:read_bytes(self.my_len), "ASCII")
end


