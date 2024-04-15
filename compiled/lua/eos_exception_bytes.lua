-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local stringstream = require("string_stream")

EosExceptionBytes = class.class(KaitaiStruct)

function EosExceptionBytes:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function EosExceptionBytes:_read()
  self._raw_envelope = self._io:read_bytes(6)
  local _io = KaitaiStream(stringstream(self._raw_envelope))
  self.envelope = EosExceptionBytes.Data(_io, self, self._root)
end


EosExceptionBytes.Data = class.class(KaitaiStruct)

function EosExceptionBytes.Data:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function EosExceptionBytes.Data:_read()
  self.buf = self._io:read_bytes(7)
end


