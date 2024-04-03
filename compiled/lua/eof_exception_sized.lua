-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local stringstream = require("string_stream")

EofExceptionSized = class.class(KaitaiStruct)

function EofExceptionSized:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function EofExceptionSized:_read()
  self._raw_buf = self._io:read_bytes(13)
  local _io = KaitaiStream(stringstream(self._raw_buf))
  self.buf = EofExceptionSized.Foo(_io, self, self._root)
end


EofExceptionSized.Foo = class.class(KaitaiStruct)

function EofExceptionSized.Foo:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function EofExceptionSized.Foo:_read()
end


