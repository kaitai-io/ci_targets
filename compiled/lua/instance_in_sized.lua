-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local stringstream = require("string_stream")

InstanceInSized = class.class(KaitaiStruct)

function InstanceInSized:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function InstanceInSized:_read()
  self._raw_cont = self._io:read_bytes(16)
  local _io = KaitaiStream(stringstream(self._raw_cont))
  self.cont = InstanceInSized.Wrapper(_io, self, self._root)
end


InstanceInSized.Bar = class.class(KaitaiStruct)

function InstanceInSized.Bar:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function InstanceInSized.Bar:_read()
  self.seq_f = self._io:read_u1()
end

InstanceInSized.Bar.property.inst = {}
function InstanceInSized.Bar.property.inst:get()
  if self._m_inst ~= nil then
    return self._m_inst
  end

  local _pos = self._io:pos()
  self._io:seek(4 + 1)
  self._m_inst = self._io:read_bytes(3)
  self._io:seek(_pos)
  return self._m_inst
end


InstanceInSized.Baz = class.class(KaitaiStruct)

function InstanceInSized.Baz:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function InstanceInSized.Baz:_read()
  self.seq_f = self._io:read_u1()
end

InstanceInSized.Baz.property.inst = {}
function InstanceInSized.Baz.property.inst:get()
  if self._m_inst ~= nil then
    return self._m_inst
  end

  local _pos = self._io:pos()
  self._io:seek(8 + 1)
  self._m_inst = self._io:read_bytes(3)
  self._io:seek(_pos)
  return self._m_inst
end


InstanceInSized.Qux = class.class(KaitaiStruct)

function InstanceInSized.Qux:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function InstanceInSized.Qux:_read()
  if self.inst_invoked > 0 then
    self.seq_f = self._io:read_u1()
  end
end

InstanceInSized.Qux.property.inst_invoked = {}
function InstanceInSized.Qux.property.inst_invoked:get()
  if self._m_inst_invoked ~= nil then
    return self._m_inst_invoked
  end

  local _pos = self._io:pos()
  self._io:seek(self._io:pos() + 1)
  self._m_inst_invoked = self._io:read_u1()
  self._io:seek(_pos)
  return self._m_inst_invoked
end

InstanceInSized.Qux.property.inst_unused_by_seq = {}
function InstanceInSized.Qux.property.inst_unused_by_seq:get()
  if self._m_inst_unused_by_seq ~= nil then
    return self._m_inst_unused_by_seq
  end

  local _pos = self._io:pos()
  self._io:seek(self._io:pos() + 1)
  self._m_inst_unused_by_seq = self._io:read_bytes(2)
  self._io:seek(_pos)
  return self._m_inst_unused_by_seq
end


InstanceInSized.Wrapper = class.class(KaitaiStruct)

function InstanceInSized.Wrapper:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function InstanceInSized.Wrapper:_read()
  self._raw_seq_sized = self._io:read_bytes(4)
  local _io = KaitaiStream(stringstream(self._raw_seq_sized))
  self.seq_sized = InstanceInSized.Qux(_io, self, self._root)
  self.seq_in_stream = InstanceInSized.Bar(self._io, self, self._root)
end

InstanceInSized.Wrapper.property.inst_in_stream = {}
function InstanceInSized.Wrapper.property.inst_in_stream:get()
  if self._m_inst_in_stream ~= nil then
    return self._m_inst_in_stream
  end

  local _pos = self._io:pos()
  self._io:seek(self._io:pos() + 3)
  self._m_inst_in_stream = InstanceInSized.Baz(self._io, self, self._root)
  self._io:seek(_pos)
  return self._m_inst_in_stream
end

InstanceInSized.Wrapper.property.inst_sized = {}
function InstanceInSized.Wrapper.property.inst_sized:get()
  if self._m_inst_sized ~= nil then
    return self._m_inst_sized
  end

  local _pos = self._io:pos()
  self._io:seek(self._io:pos() + 7)
  self._raw__m_inst_sized = self._io:read_bytes(4)
  local _io = KaitaiStream(stringstream(self._raw__m_inst_sized))
  self._m_inst_sized = InstanceInSized.Qux(_io, self, self._root)
  self._io:seek(_pos)
  return self._m_inst_sized
end


