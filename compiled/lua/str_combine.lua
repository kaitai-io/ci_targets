-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local str_decode = require("string_decode")

StrCombine = class.class(KaitaiStruct)

function StrCombine:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function StrCombine:_read()
  self.str_term = str_decode.decode(self._io:read_bytes_term(124, false, true, true), "ASCII")
  self.str_limit = str_decode.decode(self._io:read_bytes(4), "ASCII")
  self.str_eos = str_decode.decode(self._io:read_bytes_full(), "ASCII")
end

StrCombine.property.limit_or_calc_bytes = {}
function StrCombine.property.limit_or_calc_bytes:get()
  if self._m_limit_or_calc_bytes ~= nil then
    return self._m_limit_or_calc_bytes
  end

  self._m_limit_or_calc_bytes = (((true) and (self.str_limit)) or (self.str_calc_bytes))
  return self._m_limit_or_calc_bytes
end

StrCombine.property.limit_or_calc = {}
function StrCombine.property.limit_or_calc:get()
  if self._m_limit_or_calc ~= nil then
    return self._m_limit_or_calc
  end

  self._m_limit_or_calc = (((false) and (self.str_limit)) or (self.str_calc))
  return self._m_limit_or_calc
end

StrCombine.property.term_or_limit = {}
function StrCombine.property.term_or_limit:get()
  if self._m_term_or_limit ~= nil then
    return self._m_term_or_limit
  end

  self._m_term_or_limit = (((true) and (self.str_term)) or (self.str_limit))
  return self._m_term_or_limit
end

StrCombine.property.limit_or_eos = {}
function StrCombine.property.limit_or_eos:get()
  if self._m_limit_or_eos ~= nil then
    return self._m_limit_or_eos
  end

  self._m_limit_or_eos = (((true) and (self.str_limit)) or (self.str_eos))
  return self._m_limit_or_eos
end

StrCombine.property.calc_or_calc_bytes = {}
function StrCombine.property.calc_or_calc_bytes:get()
  if self._m_calc_or_calc_bytes ~= nil then
    return self._m_calc_or_calc_bytes
  end

  self._m_calc_or_calc_bytes = (((false) and (self.str_calc)) or (self.str_calc_bytes))
  return self._m_calc_or_calc_bytes
end

StrCombine.property.str_calc_bytes = {}
function StrCombine.property.str_calc_bytes:get()
  if self._m_str_calc_bytes ~= nil then
    return self._m_str_calc_bytes
  end

  self._m_str_calc_bytes = str_decode.decode(self.calc_bytes, "ASCII")
  return self._m_str_calc_bytes
end

StrCombine.property.eos_or_calc = {}
function StrCombine.property.eos_or_calc:get()
  if self._m_eos_or_calc ~= nil then
    return self._m_eos_or_calc
  end

  self._m_eos_or_calc = (((false) and (self.str_eos)) or (self.str_calc))
  return self._m_eos_or_calc
end

StrCombine.property.term_or_calc = {}
function StrCombine.property.term_or_calc:get()
  if self._m_term_or_calc ~= nil then
    return self._m_term_or_calc
  end

  self._m_term_or_calc = (((true) and (self.str_term)) or (self.str_calc))
  return self._m_term_or_calc
end

StrCombine.property.term_or_calc_bytes = {}
function StrCombine.property.term_or_calc_bytes:get()
  if self._m_term_or_calc_bytes ~= nil then
    return self._m_term_or_calc_bytes
  end

  self._m_term_or_calc_bytes = (((false) and (self.str_term)) or (self.str_calc_bytes))
  return self._m_term_or_calc_bytes
end

StrCombine.property.term_or_eos = {}
function StrCombine.property.term_or_eos:get()
  if self._m_term_or_eos ~= nil then
    return self._m_term_or_eos
  end

  self._m_term_or_eos = (((false) and (self.str_term)) or (self.str_eos))
  return self._m_term_or_eos
end

StrCombine.property.str_calc = {}
function StrCombine.property.str_calc:get()
  if self._m_str_calc ~= nil then
    return self._m_str_calc
  end

  self._m_str_calc = "bar"
  return self._m_str_calc
end

StrCombine.property.eos_or_calc_bytes = {}
function StrCombine.property.eos_or_calc_bytes:get()
  if self._m_eos_or_calc_bytes ~= nil then
    return self._m_eos_or_calc_bytes
  end

  self._m_eos_or_calc_bytes = (((true) and (self.str_eos)) or (self.str_calc_bytes))
  return self._m_eos_or_calc_bytes
end

StrCombine.property.calc_bytes = {}
function StrCombine.property.calc_bytes:get()
  if self._m_calc_bytes ~= nil then
    return self._m_calc_bytes
  end

  self._m_calc_bytes = "\098\097\122"
  return self._m_calc_bytes
end


