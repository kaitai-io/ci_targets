-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local stringstream = require("string_stream")

ZlibSurrounded = class.class(KaitaiStruct)

function ZlibSurrounded:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function ZlibSurrounded:_read()
  self.pre = self._io:read_bytes(4)
  self._raw__raw_zlib = self._io:read_bytes(12)
  self._raw_zlib = KaitaiStream.process_zlib(self._raw__raw_zlib)
  local _io = KaitaiStream(stringstream(self._raw_zlib))
  self.zlib = ZlibSurrounded.Inflated(_io, self, self._root)
  self.post = self._io:read_bytes(4)
end


ZlibSurrounded.Inflated = class.class(KaitaiStruct)

function ZlibSurrounded.Inflated:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function ZlibSurrounded.Inflated:_read()
  self.num = self._io:read_s4le()
end


