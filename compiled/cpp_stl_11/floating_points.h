#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

class floating_points_t;

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class floating_points_t : public kaitai::kstruct {

public:

    floating_points_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, floating_points_t* p__root = nullptr);

private:
    void _read();
    void _clean_up();

public:
    ~floating_points_t();

private:
    bool f_double_value_plus_float;
    double m_double_value_plus_float;

public:
    double double_value_plus_float();

private:
    bool f_single_value_plus_float;
    double m_single_value_plus_float;

public:
    double single_value_plus_float();

private:
    bool f_single_value_plus_int;
    double m_single_value_plus_int;

public:
    double single_value_plus_int();

private:
    float m_single_value;
    double m_double_value;
    float m_single_value_be;
    double m_double_value_be;
    float m_approximate_value;
    floating_points_t* m__root;
    kaitai::kstruct* m__parent;

public:
    float single_value() const { return m_single_value; }
    double double_value() const { return m_double_value; }
    float single_value_be() const { return m_single_value_be; }
    double double_value_be() const { return m_double_value_be; }
    float approximate_value() const { return m_approximate_value; }
    floating_points_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};
