-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local stringstream = require("string_stream")
local utils = require("utils")

ParamsPassIo = class.class(KaitaiStruct)

function ParamsPassIo:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function ParamsPassIo:_read()
  self._raw_first = self._io:read_bytes(1)
  local _io = KaitaiStream(stringstream(self._raw_first))
  self.first = ParamsPassIo.Block(_io, self, self._root)
  self.one = ParamsPassIo.ParamType(utils.box_unwrap((self.first.foo == 255) and utils.box_wrap(self.first._io) or (self._root._io)), self._io, self, self._root)
end


ParamsPassIo.Block = class.class(KaitaiStruct)

function ParamsPassIo.Block:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function ParamsPassIo.Block:_read()
  self.foo = self._io:read_u1()
end


ParamsPassIo.ParamType = class.class(KaitaiStruct)

function ParamsPassIo.ParamType:_init(arg_stream, io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self.arg_stream = arg_stream
  self:_read()
end

function ParamsPassIo.ParamType:_read()
  self.buf = self._io:read_bytes(self.arg_stream:size())
end


