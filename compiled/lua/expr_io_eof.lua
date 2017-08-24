-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local stringstream = require("string_stream")

ExprIoEof = class.class(KaitaiStruct)

function ExprIoEof:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function ExprIoEof:_read()
  self._raw_substream1 = self._io:read_bytes(4)
  local io = KaitaiStream(stringstream(self._raw_substream1))
  self.substream1 = ExprIoEof.OneOrTwo(io, self, self._root)
  self._raw_substream2 = self._io:read_bytes(8)
  local io = KaitaiStream(stringstream(self._raw_substream2))
  self.substream2 = ExprIoEof.OneOrTwo(io, self, self._root)
end


ExprIoEof.OneOrTwo = class.class(KaitaiStruct)

function ExprIoEof.OneOrTwo:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function ExprIoEof.OneOrTwo:_read()
  self.one = self._io:read_u4le()
  if not(self._io:is_eof()) then
    self.two = self._io:read_u4le()
  end
end

ExprIoEof.OneOrTwo.property.reflect_eof = {}
function ExprIoEof.OneOrTwo.property.reflect_eof:get()
  if self._m_reflect_eof ~= nil then
    return self._m_reflect_eof
  end

  self._m_reflect_eof = self._io:is_eof()
  return self._m_reflect_eof
end


