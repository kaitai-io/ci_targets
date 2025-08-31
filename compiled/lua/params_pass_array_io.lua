-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local stringstream = require("string_stream")

ParamsPassArrayIo = class.class(KaitaiStruct)

function ParamsPassArrayIo:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function ParamsPassArrayIo:_read()
  self._raw_first = self._io:read_bytes(1)
  local _io = KaitaiStream(stringstream(self._raw_first))
  self.first = ParamsPassArrayIo.Block(_io, self, self._root)
  self.one = ParamsPassArrayIo.ParamType({self.first._io, self._root._io}, self._io, self, self._root)
end


ParamsPassArrayIo.Block = class.class(KaitaiStruct)

function ParamsPassArrayIo.Block:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function ParamsPassArrayIo.Block:_read()
  self.foo = self._io:read_u1()
end


ParamsPassArrayIo.ParamType = class.class(KaitaiStruct)

function ParamsPassArrayIo.ParamType:_init(arg_streams, io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self.arg_streams = arg_streams
  self:_read()
end

function ParamsPassArrayIo.ParamType:_read()
  self.buf = self._io:read_bytes(self.arg_streams[0 + 1]:size())
end


