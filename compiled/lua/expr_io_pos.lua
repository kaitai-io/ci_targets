-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local stringstream = require("string_stream")
local str_decode = require("string_decode")

ExprIoPos = class.class(KaitaiStruct)

function ExprIoPos:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function ExprIoPos:_read()
  self._raw_substream1 = self._io:read_bytes(16)
  local io = KaitaiStream(stringstream(self._raw_substream1))
  self.substream1 = ExprIoPos.AllPlusNumber(io, self, self._root)
  self._raw_substream2 = self._io:read_bytes(14)
  local io = KaitaiStream(stringstream(self._raw_substream2))
  self.substream2 = ExprIoPos.AllPlusNumber(io, self, self._root)
end


ExprIoPos.AllPlusNumber = class.class(KaitaiStruct)

function ExprIoPos.AllPlusNumber:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function ExprIoPos.AllPlusNumber:_read()
  self.my_str = str_decode.decode(self._io:read_bytes_term(0, false, true, true), "UTF-8")
  self.body = self._io:read_bytes(((self._io:size() - self._io:pos()) - 2))
  self.number = self._io:read_u2le()
end


