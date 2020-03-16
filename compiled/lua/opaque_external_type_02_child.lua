-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local str_decode = require("string_decode")

OpaqueExternalType02Child = class.class(KaitaiStruct)

function OpaqueExternalType02Child:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function OpaqueExternalType02Child:_read()
  self.s1 = str_decode.decode(self._io:read_bytes_term(124, false, true, true), "UTF-8")
  self.s2 = str_decode.decode(self._io:read_bytes_term(124, false, false, true), "UTF-8")
  self.s3 = OpaqueExternalType02Child.OpaqueExternalType02ChildChild(self._io, self, self._root)
end

OpaqueExternalType02Child.property.some_method = {}
function OpaqueExternalType02Child.property.some_method:get()
  if self._m_some_method ~= nil then
    return self._m_some_method
  end

  self._m_some_method = true
  return self._m_some_method
end


OpaqueExternalType02Child.OpaqueExternalType02ChildChild = class.class(KaitaiStruct)

function OpaqueExternalType02Child.OpaqueExternalType02ChildChild:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function OpaqueExternalType02Child.OpaqueExternalType02ChildChild:_read()
  if self._root.some_method then
    self.s3 = str_decode.decode(self._io:read_bytes_term(64, true, true, true), "UTF-8")
  end
end


