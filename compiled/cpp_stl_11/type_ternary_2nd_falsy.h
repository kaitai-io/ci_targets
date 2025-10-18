#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

class type_ternary_2nd_falsy_t;

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>
#include <vector>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class type_ternary_2nd_falsy_t : public kaitai::kstruct {

public:
    class foo_t;

    type_ternary_2nd_falsy_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, type_ternary_2nd_falsy_t* p__root = nullptr);

private:
    void _read();
    void _clean_up();

public:
    ~type_ternary_2nd_falsy_t();

    class foo_t : public kaitai::kstruct {

    public:

        foo_t(kaitai::kstream* p__io, type_ternary_2nd_falsy_t* p__parent = nullptr, type_ternary_2nd_falsy_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~foo_t();
        uint8_t m() const { return m_m; }
        type_ternary_2nd_falsy_t* _root() const { return m__root; }
        type_ternary_2nd_falsy_t* _parent() const { return m__parent; }

    private:
        uint8_t m_m;
        type_ternary_2nd_falsy_t* m__root;
        type_ternary_2nd_falsy_t* m__parent;
    };

public:
    foo_t* null_ut();
    bool t();
    bool v_false();
    double v_float_neg_zero();
    double v_float_zero();
    std::vector<uint8_t>* v_int_array_empty();
    int32_t v_int_neg_zero();
    int8_t v_int_zero();
    foo_t* v_null_ut();
    std::string v_str_empty();
    std::string v_str_w_zero();
    uint8_t int_truthy() const { return m_int_truthy; }
    foo_t* ut() const { return m_ut.get(); }
    std::vector<uint8_t>* int_array() const { return m_int_array.get(); }
    std::vector<uint8_t>* int_array_empty() const { return m_int_array_empty.get(); }
    type_ternary_2nd_falsy_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }

private:
    bool f_null_ut;
    foo_t* m_null_ut;
    bool n_null_ut;

public:
    bool _is_null_null_ut() { null_ut(); return n_null_ut; };

private:
    bool f_t;
    bool m_t;
    bool f_v_false;
    bool m_v_false;
    bool f_v_float_neg_zero;
    double m_v_float_neg_zero;
    bool f_v_float_zero;
    double m_v_float_zero;
    bool f_v_int_array_empty;
    std::vector<uint8_t>* m_v_int_array_empty;
    bool f_v_int_neg_zero;
    int32_t m_v_int_neg_zero;
    bool f_v_int_zero;
    int8_t m_v_int_zero;
    bool f_v_null_ut;
    foo_t* m_v_null_ut;
    bool f_v_str_empty;
    std::string m_v_str_empty;
    bool f_v_str_w_zero;
    std::string m_v_str_w_zero;
    uint8_t m_int_truthy;
    std::unique_ptr<foo_t> m_ut;
    std::unique_ptr<std::vector<uint8_t>> m_int_array;
    std::unique_ptr<std::vector<uint8_t>> m_int_array_empty;
    type_ternary_2nd_falsy_t* m__root;
    kaitai::kstruct* m__parent;
};
