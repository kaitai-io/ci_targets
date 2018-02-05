-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local stringstream = require("string_stream")

ProcessCoerceUsertype2 = class.class(KaitaiStruct)

function ProcessCoerceUsertype2:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function ProcessCoerceUsertype2:_read()
  self.records = {}
  for i = 1, 2 do
    self.records[i] = ProcessCoerceUsertype2.Record(self._io, self, self._root)
  end
end


ProcessCoerceUsertype2.Record = class.class(KaitaiStruct)

function ProcessCoerceUsertype2.Record:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function ProcessCoerceUsertype2.Record:_read()
  self.flag = self._io:read_u1()
  if self.flag == 0 then
    self.buf_unproc = ProcessCoerceUsertype2.Foo(self._io, self, self._root)
  end
  if self.flag ~= 0 then
    self._raw__raw_buf_proc = self._io:read_bytes(4)
    self._raw_buf_proc = KaitaiStream.process_xor_one(self._raw__raw_buf_proc, 170)
    local _io = KaitaiStream(stringstream(self._raw_buf_proc))
    self.buf_proc = ProcessCoerceUsertype2.Foo(_io, self, self._root)
  end
end

ProcessCoerceUsertype2.Record.property.buf = {}
function ProcessCoerceUsertype2.Record.property.buf:get()
  if self._m_buf ~= nil then
    return self._m_buf
  end

  self._m_buf = (((self.flag == 0) and (self.buf_unproc)) or (self.buf_proc))
  return self._m_buf
end


ProcessCoerceUsertype2.Foo = class.class(KaitaiStruct)

function ProcessCoerceUsertype2.Foo:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function ProcessCoerceUsertype2.Foo:_read()
  self.value = self._io:read_u4le()
end


