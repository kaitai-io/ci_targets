-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local str_decode = require("string_decode")

InstanceStd = class.class(KaitaiStruct)

function InstanceStd:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function InstanceStd:_read()
end

InstanceStd.property.header = {}
function InstanceStd.property.header:get()
  if self._m_header ~= nil then
    return self._m_header
  end

  local _pos = self._io:pos()
  self._io:seek(2)
  self._m_header = str_decode.decode(self._io:read_bytes(5), "ASCII")
  self._io:seek(_pos)
  return self._m_header
end


