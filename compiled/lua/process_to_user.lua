-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local stringstream = require("string_stream")
local str_decode = require("string_decode")

ProcessToUser = class.class(KaitaiStruct)

function ProcessToUser:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function ProcessToUser:_read()
  self._raw__raw_buf1 = self._io:read_bytes(5)
  self._raw_buf1 = KaitaiStream.process_rotate_left(self._raw__raw_buf1, 3, 1)
  local _io = KaitaiStream(stringstream(self._raw_buf1))
  self.buf1 = ProcessToUser.JustStr(_io, self, self._root)
end


ProcessToUser.JustStr = class.class(KaitaiStruct)

function ProcessToUser.JustStr:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function ProcessToUser.JustStr:_read()
  self.str = str_decode.decode(self._io:read_bytes_full(), "UTF-8")
end


