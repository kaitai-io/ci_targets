-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local stringstream = require("string_stream")
local utils = require("utils")

InstanceIoUserEarlier = class.class(KaitaiStruct)

function InstanceIoUserEarlier:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function InstanceIoUserEarlier:_read()
  self._raw_sized_a = self._io:read_bytes(6)
  local _io = KaitaiStream(stringstream(self._raw_sized_a))
  self.sized_a = InstanceIoUserEarlier.Slot(_io, self, self._root)
  self._raw_sized_b = self._io:read_bytes(6)
  local _io = KaitaiStream(stringstream(self._raw_sized_b))
  self.sized_b = InstanceIoUserEarlier.Slot(_io, self, self._root)
  self.into_b = InstanceIoUserEarlier.Foo(self._io, self, self._root)
  self.into_a_skipped = InstanceIoUserEarlier.Foo(self._io, self, self._root)
  self.into_a = InstanceIoUserEarlier.Foo(self._io, self, self._root)
  self.last_accessor = InstanceIoUserEarlier.Baz(self._io, self, self._root)
end

InstanceIoUserEarlier.property.a_mid = {}
function InstanceIoUserEarlier.property.a_mid:get()
  if self._m_a_mid ~= nil then
    return self._m_a_mid
  end

  local _io = self.into_a.inst._io
  local _pos = _io:pos()
  _io:seek(1)
  self._m_a_mid = _io:read_u2le()
  _io:seek(_pos)
  return self._m_a_mid
end

InstanceIoUserEarlier.property.b_mid = {}
function InstanceIoUserEarlier.property.b_mid:get()
  if self._m_b_mid ~= nil then
    return self._m_b_mid
  end

  local _io = self.into_b.inst._io
  local _pos = _io:pos()
  _io:seek(1)
  self._m_b_mid = _io:read_u2le()
  _io:seek(_pos)
  return self._m_b_mid
end


InstanceIoUserEarlier.Baz = class.class(KaitaiStruct)

function InstanceIoUserEarlier.Baz:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function InstanceIoUserEarlier.Baz:_read()
  if self._parent.into_b.inst.last == 89 then
    self.v = self._io:read_u1()
  end
end


InstanceIoUserEarlier.Foo = class.class(KaitaiStruct)

function InstanceIoUserEarlier.Foo:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function InstanceIoUserEarlier.Foo:_read()
  self.indicator = self._io:read_u1()
  if  ((self.inst._io:size() ~= 0) and (self.inst.content == 102))  then
    self.bar = self._io:read_u1()
  end
end

InstanceIoUserEarlier.Foo.property.inst = {}
function InstanceIoUserEarlier.Foo.property.inst:get()
  if self._m_inst ~= nil then
    return self._m_inst
  end

  local _io = utils.box_unwrap((self.indicator == 202) and utils.box_wrap(self._parent.sized_b._io) or (self._parent.sized_a._io))
  local _pos = _io:pos()
  _io:seek(1)
  self._raw__m_inst = _io:read_bytes(utils.box_unwrap((self._io:pos() ~= 14) and utils.box_wrap(4) or (0)))
  local _io = KaitaiStream(stringstream(self._raw__m_inst))
  self._m_inst = InstanceIoUserEarlier.Slot(_io, self, self._root)
  _io:seek(_pos)
  return self._m_inst
end


InstanceIoUserEarlier.Slot = class.class(KaitaiStruct)

function InstanceIoUserEarlier.Slot:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function InstanceIoUserEarlier.Slot:_read()
  if self._io:size() ~= 0 then
    self.content = self._io:read_u1()
  end
end

InstanceIoUserEarlier.Slot.property.last = {}
function InstanceIoUserEarlier.Slot.property.last:get()
  if self._m_last ~= nil then
    return self._m_last
  end

  if self._io:size() ~= 0 then
    local _pos = self._io:pos()
    self._io:seek(self._io:size() - 1)
    self._m_last = self._io:read_u1()
    self._io:seek(_pos)
  end
  return self._m_last
end


