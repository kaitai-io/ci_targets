-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local utils = require("utils")

CombineBytes = class.class(KaitaiStruct)

function CombineBytes:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function CombineBytes:_read()
  self.bytes_term = self._io:read_bytes_term(124, false, true, true)
  self.bytes_limit = self._io:read_bytes(4)
  self.bytes_eos = self._io:read_bytes_full()
end

CombineBytes.property.bytes_calc = {}
function CombineBytes.property.bytes_calc:get()
  if self._m_bytes_calc ~= nil then
    return self._m_bytes_calc
  end

  self._m_bytes_calc = "\082\110\068"
  return self._m_bytes_calc
end

CombineBytes.property.eos_or_calc = {}
function CombineBytes.property.eos_or_calc:get()
  if self._m_eos_or_calc ~= nil then
    return self._m_eos_or_calc
  end

  self._m_eos_or_calc = utils.box_unwrap((true) and utils.box_wrap(self.bytes_eos) or (self.bytes_calc))
  return self._m_eos_or_calc
end

CombineBytes.property.limit_or_calc = {}
function CombineBytes.property.limit_or_calc:get()
  if self._m_limit_or_calc ~= nil then
    return self._m_limit_or_calc
  end

  self._m_limit_or_calc = utils.box_unwrap((false) and utils.box_wrap(self.bytes_limit) or (self.bytes_calc))
  return self._m_limit_or_calc
end

CombineBytes.property.limit_or_eos = {}
function CombineBytes.property.limit_or_eos:get()
  if self._m_limit_or_eos ~= nil then
    return self._m_limit_or_eos
  end

  self._m_limit_or_eos = utils.box_unwrap((true) and utils.box_wrap(self.bytes_limit) or (self.bytes_eos))
  return self._m_limit_or_eos
end

CombineBytes.property.term_or_calc = {}
function CombineBytes.property.term_or_calc:get()
  if self._m_term_or_calc ~= nil then
    return self._m_term_or_calc
  end

  self._m_term_or_calc = utils.box_unwrap((true) and utils.box_wrap(self.bytes_term) or (self.bytes_calc))
  return self._m_term_or_calc
end

CombineBytes.property.term_or_eos = {}
function CombineBytes.property.term_or_eos:get()
  if self._m_term_or_eos ~= nil then
    return self._m_term_or_eos
  end

  self._m_term_or_eos = utils.box_unwrap((false) and utils.box_wrap(self.bytes_term) or (self.bytes_eos))
  return self._m_term_or_eos
end

CombineBytes.property.term_or_limit = {}
function CombineBytes.property.term_or_limit:get()
  if self._m_term_or_limit ~= nil then
    return self._m_term_or_limit
  end

  self._m_term_or_limit = utils.box_unwrap((true) and utils.box_wrap(self.bytes_term) or (self.bytes_limit))
  return self._m_term_or_limit
end


