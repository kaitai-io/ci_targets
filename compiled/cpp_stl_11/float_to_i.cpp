// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "float_to_i.h"

floatToI_t::floatToI_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, floatToI_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    f_float2_i = false;
    f_calc_float1 = false;
    f_float4_i = false;
    f_calc_float3 = false;
    f_calc_float2 = false;
    f_float1_i = false;
    f_double_i = false;
    f_float3_i = false;
    f_single_i = false;
    f_calc_float4 = false;
    _read();
}

void floatToI_t::_read() {
    m_single_value = m__io->read_f4le();
    m_double_value = m__io->read_f8le();
}

floatToI_t::~floatToI_t() {
}

int32_t floatToI_t::float2_i() {
    if (f_float2_i)
        return m_float2_i;
    m_float2_i = static_cast<int>(calc_float2());
    f_float2_i = true;
    return m_float2_i;
}

double floatToI_t::calc_float1() {
    if (f_calc_float1)
        return m_calc_float1;
    m_calc_float1 = 1.234;
    f_calc_float1 = true;
    return m_calc_float1;
}

int32_t floatToI_t::float4_i() {
    if (f_float4_i)
        return m_float4_i;
    m_float4_i = static_cast<int>(calc_float4());
    f_float4_i = true;
    return m_float4_i;
}

double floatToI_t::calc_float3() {
    if (f_calc_float3)
        return m_calc_float3;
    m_calc_float3 = 1.9;
    f_calc_float3 = true;
    return m_calc_float3;
}

double floatToI_t::calc_float2() {
    if (f_calc_float2)
        return m_calc_float2;
    m_calc_float2 = 1.5;
    f_calc_float2 = true;
    return m_calc_float2;
}

int32_t floatToI_t::float1_i() {
    if (f_float1_i)
        return m_float1_i;
    m_float1_i = static_cast<int>(calc_float1());
    f_float1_i = true;
    return m_float1_i;
}

int32_t floatToI_t::double_i() {
    if (f_double_i)
        return m_double_i;
    m_double_i = static_cast<int>(double_value());
    f_double_i = true;
    return m_double_i;
}

int32_t floatToI_t::float3_i() {
    if (f_float3_i)
        return m_float3_i;
    m_float3_i = static_cast<int>(calc_float3());
    f_float3_i = true;
    return m_float3_i;
}

int32_t floatToI_t::single_i() {
    if (f_single_i)
        return m_single_i;
    m_single_i = static_cast<int>(single_value());
    f_single_i = true;
    return m_single_i;
}

double floatToI_t::calc_float4() {
    if (f_calc_float4)
        return m_calc_float4;
    m_calc_float4 = -2.7;
    f_calc_float4 = true;
    return m_calc_float4;
}
