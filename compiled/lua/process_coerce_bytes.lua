-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local utils = require("utils")

ProcessCoerceBytes = class.class(KaitaiStruct)

function ProcessCoerceBytes:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function ProcessCoerceBytes:_read()
  self.records = {}
  for i = 0, 2 - 1 do
    self.records[i + 1] = ProcessCoerceBytes.Record(self._io, self, self._root)
  end
end


ProcessCoerceBytes.Record = class.class(KaitaiStruct)

function ProcessCoerceBytes.Record:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function ProcessCoerceBytes.Record:_read()
  self.flag = self._io:read_u1()
  if self.flag == 0 then
    self.buf_unproc = self._io:read_bytes(4)
  end
  if self.flag ~= 0 then
    self._raw_buf_proc = self._io:read_bytes(4)
    self.buf_proc = KaitaiStream.process_xor_one(self._raw_buf_proc, 170)
  end
end

ProcessCoerceBytes.Record.property.buf = {}
function ProcessCoerceBytes.Record.property.buf:get()
  if self._m_buf ~= nil then
    return self._m_buf
  end

  self._m_buf = utils.box_unwrap((self.flag == 0) and utils.box_wrap(self.buf_unproc) or (self.buf_proc))
  return self._m_buf
end


