// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "float_to_i.h"

float_to_i_t::float_to_i_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, float_to_i_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    f_calc_float1 = false;
    f_calc_float2 = false;
    f_calc_float3 = false;
    f_calc_float4 = false;
    f_calc_if = false;
    f_calc_if_i = false;
    f_double_i = false;
    f_double_if_i = false;
    f_float1_i = false;
    f_float2_i = false;
    f_float3_i = false;
    f_float4_i = false;
    f_single_i = false;
    f_single_if_i = false;
    _read();
}

void float_to_i_t::_read() {
    m_single_value = m__io->read_f4le();
    m_double_value = m__io->read_f8le();
    n_single_value_if = true;
    if (true) {
        n_single_value_if = false;
        m_single_value_if = m__io->read_f4be();
    }
    n_double_value_if = true;
    if (true) {
        n_double_value_if = false;
        m_double_value_if = m__io->read_f8be();
    }
}

float_to_i_t::~float_to_i_t() {
    _clean_up();
}

void float_to_i_t::_clean_up() {
    if (!n_single_value_if) {
    }
    if (!n_double_value_if) {
    }
}

double float_to_i_t::calc_float1() {
    if (f_calc_float1)
        return m_calc_float1;
    f_calc_float1 = true;
    m_calc_float1 = 1.234;
    return m_calc_float1;
}

double float_to_i_t::calc_float2() {
    if (f_calc_float2)
        return m_calc_float2;
    f_calc_float2 = true;
    m_calc_float2 = 1.5;
    return m_calc_float2;
}

double float_to_i_t::calc_float3() {
    if (f_calc_float3)
        return m_calc_float3;
    f_calc_float3 = true;
    m_calc_float3 = 1.9;
    return m_calc_float3;
}

double float_to_i_t::calc_float4() {
    if (f_calc_float4)
        return m_calc_float4;
    f_calc_float4 = true;
    m_calc_float4 = -2.7;
    return m_calc_float4;
}

double float_to_i_t::calc_if() {
    if (f_calc_if)
        return m_calc_if;
    f_calc_if = true;
    m_calc_if = 13.9;
    return m_calc_if;
}

int32_t float_to_i_t::calc_if_i() {
    if (f_calc_if_i)
        return m_calc_if_i;
    f_calc_if_i = true;
    m_calc_if_i = static_cast<int>(calc_if());
    return m_calc_if_i;
}

int32_t float_to_i_t::double_i() {
    if (f_double_i)
        return m_double_i;
    f_double_i = true;
    m_double_i = static_cast<int>(double_value());
    return m_double_i;
}

int32_t float_to_i_t::double_if_i() {
    if (f_double_if_i)
        return m_double_if_i;
    f_double_if_i = true;
    m_double_if_i = static_cast<int>(double_value_if());
    return m_double_if_i;
}

int32_t float_to_i_t::float1_i() {
    if (f_float1_i)
        return m_float1_i;
    f_float1_i = true;
    m_float1_i = static_cast<int>(calc_float1());
    return m_float1_i;
}

int32_t float_to_i_t::float2_i() {
    if (f_float2_i)
        return m_float2_i;
    f_float2_i = true;
    m_float2_i = static_cast<int>(calc_float2());
    return m_float2_i;
}

int32_t float_to_i_t::float3_i() {
    if (f_float3_i)
        return m_float3_i;
    f_float3_i = true;
    m_float3_i = static_cast<int>(calc_float3());
    return m_float3_i;
}

int32_t float_to_i_t::float4_i() {
    if (f_float4_i)
        return m_float4_i;
    f_float4_i = true;
    m_float4_i = static_cast<int>(calc_float4());
    return m_float4_i;
}

int32_t float_to_i_t::single_i() {
    if (f_single_i)
        return m_single_i;
    f_single_i = true;
    m_single_i = static_cast<int>(single_value());
    return m_single_i;
}

int32_t float_to_i_t::single_if_i() {
    if (f_single_if_i)
        return m_single_if_i;
    f_single_if_i = true;
    m_single_if_i = static_cast<int>(single_value_if());
    return m_single_if_i;
}
