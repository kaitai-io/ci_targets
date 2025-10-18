#ifndef FLOAT_TO_I_H_
#define FLOAT_TO_I_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

class float_to_i_t;

#include "kaitai/kaitaistruct.h"
#include <stdint.h>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class float_to_i_t : public kaitai::kstruct {

public:

    float_to_i_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, float_to_i_t* p__root = 0);

private:
    void _read();
    void _clean_up();

public:
    ~float_to_i_t();
    double calc_float1();
    double calc_float2();
    double calc_float3();
    double calc_float4();
    double calc_if();
    int32_t calc_if_i();
    int32_t double_i();
    int32_t double_if_i();
    int32_t float1_i();
    int32_t float2_i();
    int32_t float3_i();
    int32_t float4_i();
    int32_t single_i();
    int32_t single_if_i();
    float single_value() const { return m_single_value; }
    double double_value() const { return m_double_value; }
    float single_value_if() const { return m_single_value_if; }
    double double_value_if() const { return m_double_value_if; }
    float_to_i_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }

private:
    bool f_calc_float1;
    double m_calc_float1;
    bool f_calc_float2;
    double m_calc_float2;
    bool f_calc_float3;
    double m_calc_float3;
    bool f_calc_float4;
    double m_calc_float4;
    bool f_calc_if;
    double m_calc_if;
    bool f_calc_if_i;
    int32_t m_calc_if_i;
    bool f_double_i;
    int32_t m_double_i;
    bool f_double_if_i;
    int32_t m_double_if_i;
    bool f_float1_i;
    int32_t m_float1_i;
    bool f_float2_i;
    int32_t m_float2_i;
    bool f_float3_i;
    int32_t m_float3_i;
    bool f_float4_i;
    int32_t m_float4_i;
    bool f_single_i;
    int32_t m_single_i;
    bool f_single_if_i;
    int32_t m_single_if_i;
    float m_single_value;
    double m_double_value;
    float m_single_value_if;
    bool n_single_value_if;

public:
    bool _is_null_single_value_if() { single_value_if(); return n_single_value_if; };

private:
    double m_double_value_if;
    bool n_double_value_if;

public:
    bool _is_null_double_value_if() { double_value_if(); return n_double_value_if; };

private:
    float_to_i_t* m__root;
    kaitai::kstruct* m__parent;
};

#endif  // FLOAT_TO_I_H_
