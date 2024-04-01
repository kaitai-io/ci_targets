-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local stringstream = require("string_stream")
local utils = require("utils")

ExprIoTernary = class.class(KaitaiStruct)

function ExprIoTernary:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function ExprIoTernary:_read()
  self.flag = self._io:read_u1()
  self._raw_obj1 = self._io:read_bytes(4)
  local _io = KaitaiStream(stringstream(self._raw_obj1))
  self.obj1 = ExprIoTernary.One(_io, self, self._root)
  self._raw_obj2 = self._io:read_bytes(8)
  local _io = KaitaiStream(stringstream(self._raw_obj2))
  self.obj2 = ExprIoTernary.Two(_io, self, self._root)
end

ExprIoTernary.property.one_or_two_io = {}
function ExprIoTernary.property.one_or_two_io:get()
  if self._m_one_or_two_io ~= nil then
    return self._m_one_or_two_io
  end

  self._m_one_or_two_io = utils.box_unwrap((self.flag == 64) and utils.box_wrap(self.obj1) or (self.obj2))._io
  return self._m_one_or_two_io
end

ExprIoTernary.property.one_or_two_io_size1 = {}
function ExprIoTernary.property.one_or_two_io_size1:get()
  if self._m_one_or_two_io_size1 ~= nil then
    return self._m_one_or_two_io_size1
  end

  self._m_one_or_two_io_size1 = utils.box_unwrap((self.flag == 64) and utils.box_wrap(self.obj1) or (self.obj2))._io:size()
  return self._m_one_or_two_io_size1
end

ExprIoTernary.property.one_or_two_io_size2 = {}
function ExprIoTernary.property.one_or_two_io_size2:get()
  if self._m_one_or_two_io_size2 ~= nil then
    return self._m_one_or_two_io_size2
  end

  self._m_one_or_two_io_size2 = self.one_or_two_io:size()
  return self._m_one_or_two_io_size2
end

ExprIoTernary.property.one_or_two_io_size_add_3 = {}
function ExprIoTernary.property.one_or_two_io_size_add_3:get()
  if self._m_one_or_two_io_size_add_3 ~= nil then
    return self._m_one_or_two_io_size_add_3
  end

  self._m_one_or_two_io_size_add_3 = utils.box_unwrap((self.flag == 64) and utils.box_wrap(self.obj1) or (self.obj2))._io:size() + 3
  return self._m_one_or_two_io_size_add_3
end

ExprIoTernary.property.one_or_two_obj = {}
function ExprIoTernary.property.one_or_two_obj:get()
  if self._m_one_or_two_obj ~= nil then
    return self._m_one_or_two_obj
  end

  self._m_one_or_two_obj = utils.box_unwrap((self.flag == 64) and utils.box_wrap(self.obj1) or (self.obj2))
  return self._m_one_or_two_obj
end


ExprIoTernary.One = class.class(KaitaiStruct)

function ExprIoTernary.One:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function ExprIoTernary.One:_read()
  self.one = self._io:read_u1()
end


ExprIoTernary.Two = class.class(KaitaiStruct)

function ExprIoTernary.Two:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function ExprIoTernary.Two:_read()
  self.two = self._io:read_u1()
end


