-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local str_decode = require("string_decode")

ExprStrEncodings = class.class(KaitaiStruct)

function ExprStrEncodings:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function ExprStrEncodings:_read()
  self.len_of_1 = self._io:read_u2le()
  self.str1 = str_decode.decode(self._io:read_bytes(self.len_of_1), "ASCII")
  self.len_of_2 = self._io:read_u2le()
  self.str2 = str_decode.decode(self._io:read_bytes(self.len_of_2), "UTF-8")
  self.len_of_3 = self._io:read_u2le()
  self.str3 = str_decode.decode(self._io:read_bytes(self.len_of_3), "SJIS")
  self.len_of_4 = self._io:read_u2le()
  self.str4 = str_decode.decode(self._io:read_bytes(self.len_of_4), "IBM437")
end

ExprStrEncodings.property.str1_eq = {}
function ExprStrEncodings.property.str1_eq:get()
  if self._m_str1_eq ~= nil then
    return self._m_str1_eq
  end

  self._m_str1_eq = self.str1 == "Some ASCII"
  return self._m_str1_eq
end

ExprStrEncodings.property.str2_eq = {}
function ExprStrEncodings.property.str2_eq:get()
  if self._m_str2_eq ~= nil then
    return self._m_str2_eq
  end

  self._m_str2_eq = self.str2 == "\u{3053}\u{3093}\u{306b}\u{3061}\u{306f}"
  return self._m_str2_eq
end

ExprStrEncodings.property.str3_eq_str2 = {}
function ExprStrEncodings.property.str3_eq_str2:get()
  if self._m_str3_eq_str2 ~= nil then
    return self._m_str3_eq_str2
  end

  self._m_str3_eq_str2 = self.str3 == self.str2
  return self._m_str3_eq_str2
end

ExprStrEncodings.property.str4_eq = {}
function ExprStrEncodings.property.str4_eq:get()
  if self._m_str4_eq ~= nil then
    return self._m_str4_eq
  end

  self._m_str4_eq = self.str4 == "\u{2591}\u{2592}\u{2593}"
  return self._m_str4_eq
end

ExprStrEncodings.property.str3_eq = {}
function ExprStrEncodings.property.str3_eq:get()
  if self._m_str3_eq ~= nil then
    return self._m_str3_eq
  end

  self._m_str3_eq = self.str3 == "\u{3053}\u{3093}\u{306b}\u{3061}\u{306f}"
  return self._m_str3_eq
end

ExprStrEncodings.property.str4_gt_str_calc = {}
function ExprStrEncodings.property.str4_gt_str_calc:get()
  if self._m_str4_gt_str_calc ~= nil then
    return self._m_str4_gt_str_calc
  end

  self._m_str4_gt_str_calc = self.str4 > "\u{2524}"
  return self._m_str4_gt_str_calc
end

ExprStrEncodings.property.str4_gt_str_from_bytes = {}
function ExprStrEncodings.property.str4_gt_str_from_bytes:get()
  if self._m_str4_gt_str_from_bytes ~= nil then
    return self._m_str4_gt_str_from_bytes
  end

  self._m_str4_gt_str_from_bytes = self.str4 > str_decode.decode("\180", "IBM437")
  return self._m_str4_gt_str_from_bytes
end


