-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local str_decode = require("string_decode")
local stringstream = require("string_stream")

Expr2 = class.class(KaitaiStruct)

function Expr2:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function Expr2:_read()
  self.str1 = Expr2.ModStr(self._io, self, self._root)
  self.str2 = Expr2.ModStr(self._io, self, self._root)
end

Expr2.property.str1_avg = {}
function Expr2.property.str1_avg:get()
  if self._m_str1_avg ~= nil then
    return self._m_str1_avg
  end

  self._m_str1_avg = self.str1.rest.avg
  return self._m_str1_avg
end

Expr2.property.str1_char5 = {}
function Expr2.property.str1_char5:get()
  if self._m_str1_char5 ~= nil then
    return self._m_str1_char5
  end

  self._m_str1_char5 = self.str1.char5
  return self._m_str1_char5
end

Expr2.property.str1_len = {}
function Expr2.property.str1_len:get()
  if self._m_str1_len ~= nil then
    return self._m_str1_len
  end

  self._m_str1_len = string.len(self.str1.str)
  return self._m_str1_len
end

Expr2.property.str1_len_mod = {}
function Expr2.property.str1_len_mod:get()
  if self._m_str1_len_mod ~= nil then
    return self._m_str1_len_mod
  end

  self._m_str1_len_mod = self.str1.len_mod
  return self._m_str1_len_mod
end

Expr2.property.str1_tuple5 = {}
function Expr2.property.str1_tuple5:get()
  if self._m_str1_tuple5 ~= nil then
    return self._m_str1_tuple5
  end

  self._m_str1_tuple5 = self.str1.tuple5
  return self._m_str1_tuple5
end

Expr2.property.str1_byte1 = {}
function Expr2.property.str1_byte1:get()
  if self._m_str1_byte1 ~= nil then
    return self._m_str1_byte1
  end

  self._m_str1_byte1 = self.str1.rest.byte1
  return self._m_str1_byte1
end

Expr2.property.str2_tuple5 = {}
function Expr2.property.str2_tuple5:get()
  if self._m_str2_tuple5 ~= nil then
    return self._m_str2_tuple5
  end

  self._m_str2_tuple5 = self.str2.tuple5
  return self._m_str2_tuple5
end


Expr2.ModStr = class.class(KaitaiStruct)

function Expr2.ModStr:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function Expr2.ModStr:_read()
  self.len_orig = self._io:read_u2le()
  self.str = str_decode.decode(self._io:read_bytes(self.len_mod), "UTF-8")
  self._raw_rest = self._io:read_bytes(3)
  local _io = KaitaiStream(stringstream(self._raw_rest))
  self.rest = Expr2.Tuple(_io, self, self._root)
end

Expr2.ModStr.property.len_mod = {}
function Expr2.ModStr.property.len_mod:get()
  if self._m_len_mod ~= nil then
    return self._m_len_mod
  end

  self._m_len_mod = (self.len_orig - 3)
  return self._m_len_mod
end

Expr2.ModStr.property.char5 = {}
function Expr2.ModStr.property.char5:get()
  if self._m_char5 ~= nil then
    return self._m_char5
  end

  local _pos = self._io:pos()
  self._io:seek(5)
  self._m_char5 = str_decode.decode(self._io:read_bytes(1), "ASCII")
  self._io:seek(_pos)
  return self._m_char5
end

Expr2.ModStr.property.tuple5 = {}
function Expr2.ModStr.property.tuple5:get()
  if self._m_tuple5 ~= nil then
    return self._m_tuple5
  end

  local _pos = self._io:pos()
  self._io:seek(5)
  self._m_tuple5 = Expr2.Tuple(self._io, self, self._root)
  self._io:seek(_pos)
  return self._m_tuple5
end


Expr2.Tuple = class.class(KaitaiStruct)

function Expr2.Tuple:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function Expr2.Tuple:_read()
  self.byte0 = self._io:read_u1()
  self.byte1 = self._io:read_u1()
  self.byte2 = self._io:read_u1()
end

Expr2.Tuple.property.avg = {}
function Expr2.Tuple.property.avg:get()
  if self._m_avg ~= nil then
    return self._m_avg
  end

  self._m_avg = math.floor((self.byte1 + self.byte2) / 2)
  return self._m_avg
end


