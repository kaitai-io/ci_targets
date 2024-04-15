-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local stringstream = require("string_stream")
local str_decode = require("string_decode")

SwitchManualIntSizeEos = class.class(KaitaiStruct)

function SwitchManualIntSizeEos:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function SwitchManualIntSizeEos:_read()
  self.chunks = {}
  local i = 0
  while not self._io:is_eof() do
    self.chunks[i + 1] = SwitchManualIntSizeEos.Chunk(self._io, self, self._root)
    i = i + 1
  end
end


SwitchManualIntSizeEos.Chunk = class.class(KaitaiStruct)

function SwitchManualIntSizeEos.Chunk:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function SwitchManualIntSizeEos.Chunk:_read()
  self.code = self._io:read_u1()
  self.size = self._io:read_u4le()
  self._raw_body = self._io:read_bytes(self.size)
  local _io = KaitaiStream(stringstream(self._raw_body))
  self.body = SwitchManualIntSizeEos.ChunkBody(_io, self, self._root)
end


SwitchManualIntSizeEos.ChunkBody = class.class(KaitaiStruct)

function SwitchManualIntSizeEos.ChunkBody:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function SwitchManualIntSizeEos.ChunkBody:_read()
  local _on = self._parent.code
  if _on == 17 then
    self._raw_body = self._io:read_bytes_full()
    local _io = KaitaiStream(stringstream(self._raw_body))
    self.body = SwitchManualIntSizeEos.ChunkBody.ChunkMeta(_io, self, self._root)
  elseif _on == 34 then
    self._raw_body = self._io:read_bytes_full()
    local _io = KaitaiStream(stringstream(self._raw_body))
    self.body = SwitchManualIntSizeEos.ChunkBody.ChunkDir(_io, self, self._root)
  else
    self.body = self._io:read_bytes_full()
  end
end


SwitchManualIntSizeEos.ChunkBody.ChunkDir = class.class(KaitaiStruct)

function SwitchManualIntSizeEos.ChunkBody.ChunkDir:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function SwitchManualIntSizeEos.ChunkBody.ChunkDir:_read()
  self.entries = {}
  local i = 0
  while not self._io:is_eof() do
    self.entries[i + 1] = str_decode.decode(self._io:read_bytes(4), "UTF-8")
    i = i + 1
  end
end


SwitchManualIntSizeEos.ChunkBody.ChunkMeta = class.class(KaitaiStruct)

function SwitchManualIntSizeEos.ChunkBody.ChunkMeta:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function SwitchManualIntSizeEos.ChunkBody.ChunkMeta:_read()
  self.title = str_decode.decode(self._io:read_bytes_term(0, false, true, true), "UTF-8")
  self.author = str_decode.decode(self._io:read_bytes_term(0, false, true, true), "UTF-8")
end


