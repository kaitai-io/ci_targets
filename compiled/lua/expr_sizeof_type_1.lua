-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

ExprSizeofType1 = class.class(KaitaiStruct)

function ExprSizeofType1:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function ExprSizeofType1:_read()
end

ExprSizeofType1.property.sizeof_block = {}
function ExprSizeofType1.property.sizeof_block:get()
  if self._m_sizeof_block ~= nil then
    return self._m_sizeof_block
  end

  self._m_sizeof_block = 11
  return self._m_sizeof_block
end

ExprSizeofType1.property.sizeof_subblock = {}
function ExprSizeofType1.property.sizeof_subblock:get()
  if self._m_sizeof_subblock ~= nil then
    return self._m_sizeof_subblock
  end

  self._m_sizeof_subblock = 4
  return self._m_sizeof_subblock
end


ExprSizeofType1.Block = class.class(KaitaiStruct)

function ExprSizeofType1.Block:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function ExprSizeofType1.Block:_read()
  self.a = self._io:read_u1()
  self.b = self._io:read_u4le()
  self.c = self._io:read_bytes(2)
  self.d = ExprSizeofType1.Block.Subblock(self._io, self, self._root)
end


ExprSizeofType1.Block.Subblock = class.class(KaitaiStruct)

function ExprSizeofType1.Block.Subblock:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function ExprSizeofType1.Block.Subblock:_read()
  self.a = self._io:read_bytes(4)
end


