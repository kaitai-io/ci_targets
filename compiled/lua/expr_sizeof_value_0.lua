-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

ExprSizeofValue0 = class.class(KaitaiStruct)

function ExprSizeofValue0:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function ExprSizeofValue0:_read()
  self.block1 = ExprSizeofValue0.Block(self._io, self, self._root)
  self.more = self._io:read_u2le()
end

ExprSizeofValue0.property.self_sizeof = {}
function ExprSizeofValue0.property.self_sizeof:get()
  if self._m_self_sizeof ~= nil then
    return self._m_self_sizeof
  end

  self._m_self_sizeof = 9
  return self._m_self_sizeof
end

ExprSizeofValue0.property.sizeof_block = {}
function ExprSizeofValue0.property.sizeof_block:get()
  if self._m_sizeof_block ~= nil then
    return self._m_sizeof_block
  end

  self._m_sizeof_block = 7
  return self._m_sizeof_block
end

ExprSizeofValue0.property.sizeof_block_a = {}
function ExprSizeofValue0.property.sizeof_block_a:get()
  if self._m_sizeof_block_a ~= nil then
    return self._m_sizeof_block_a
  end

  self._m_sizeof_block_a = 1
  return self._m_sizeof_block_a
end

ExprSizeofValue0.property.sizeof_block_b = {}
function ExprSizeofValue0.property.sizeof_block_b:get()
  if self._m_sizeof_block_b ~= nil then
    return self._m_sizeof_block_b
  end

  self._m_sizeof_block_b = 4
  return self._m_sizeof_block_b
end

ExprSizeofValue0.property.sizeof_block_c = {}
function ExprSizeofValue0.property.sizeof_block_c:get()
  if self._m_sizeof_block_c ~= nil then
    return self._m_sizeof_block_c
  end

  self._m_sizeof_block_c = 2
  return self._m_sizeof_block_c
end


ExprSizeofValue0.Block = class.class(KaitaiStruct)

function ExprSizeofValue0.Block:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function ExprSizeofValue0.Block:_read()
  self.a = self._io:read_u1()
  self.b = self._io:read_u4le()
  self.c = self._io:read_bytes(2)
end


