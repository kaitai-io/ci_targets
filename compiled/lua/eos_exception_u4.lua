-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local stringstream = require("string_stream")

EosExceptionU4 = class.class(KaitaiStruct)

function EosExceptionU4:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function EosExceptionU4:_read()
  self._raw_envelope = self._io:read_bytes(6)
  local _io = KaitaiStream(stringstream(self._raw_envelope))
  self.envelope = EosExceptionU4.Data(_io, self, self._root)
end


EosExceptionU4.Data = class.class(KaitaiStruct)

function EosExceptionU4.Data:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function EosExceptionU4.Data:_read()
  self.prebuf = self._io:read_bytes(3)
  self.fail_int = self._io:read_u4le()
end


