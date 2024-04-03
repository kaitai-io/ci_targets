-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local stringstream = require("string_stream")

EosExceptionSized = class.class(KaitaiStruct)

function EosExceptionSized:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function EosExceptionSized:_read()
  self._raw_envelope = self._io:read_bytes(6)
  local _io = KaitaiStream(stringstream(self._raw_envelope))
  self.envelope = EosExceptionSized.Data(_io, self, self._root)
end


EosExceptionSized.Data = class.class(KaitaiStruct)

function EosExceptionSized.Data:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function EosExceptionSized.Data:_read()
  self._raw_buf = self._io:read_bytes(7)
  local _io = KaitaiStream(stringstream(self._raw_buf))
  self.buf = EosExceptionSized.Foo(_io, self, self._root)
end


EosExceptionSized.Foo = class.class(KaitaiStruct)

function EosExceptionSized.Foo:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function EosExceptionSized.Foo:_read()
end


