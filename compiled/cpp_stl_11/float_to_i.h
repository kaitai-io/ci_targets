#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class float_to_i_t : public kaitai::kstruct {

public:

    float_to_i_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, float_to_i_t* p__root = nullptr);

private:
    void _read();
    void _clean_up();

public:
    ~float_to_i_t();

private:
    bool f_float2_i;
    int32_t m_float2_i;

public:
    int32_t float2_i();

private:
    bool f_calc_float1;
    double m_calc_float1;

public:
    double calc_float1();

private:
    bool f_float4_i;
    int32_t m_float4_i;

public:
    int32_t float4_i();

private:
    bool f_calc_float3;
    double m_calc_float3;

public:
    double calc_float3();

private:
    bool f_calc_float2;
    double m_calc_float2;

public:
    double calc_float2();

private:
    bool f_float1_i;
    int32_t m_float1_i;

public:
    int32_t float1_i();

private:
    bool f_double_i;
    int32_t m_double_i;

public:
    int32_t double_i();

private:
    bool f_float3_i;
    int32_t m_float3_i;

public:
    int32_t float3_i();

private:
    bool f_single_i;
    int32_t m_single_i;

public:
    int32_t single_i();

private:
    bool f_calc_float4;
    double m_calc_float4;

public:
    double calc_float4();

private:
    float m_single_value;
    double m_double_value;
    float_to_i_t* m__root;
    kaitai::kstruct* m__parent;

public:
    float single_value() const { return m_single_value; }
    double double_value() const { return m_double_value; }
    float_to_i_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};
