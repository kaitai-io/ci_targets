#ifndef TYPE_TERNARY_2ND_FALSY_H_
#define TYPE_TERNARY_2ND_FALSY_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <vector>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class type_ternary_2nd_falsy_t : public kaitai::kstruct {

public:
    class foo_t;

    type_ternary_2nd_falsy_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, type_ternary_2nd_falsy_t* p__root = 0);

private:
    void _read();

public:
    ~type_ternary_2nd_falsy_t();

    class foo_t : public kaitai::kstruct {

    public:

        foo_t(kaitai::kstream* p__io, type_ternary_2nd_falsy_t* p__parent = 0, type_ternary_2nd_falsy_t* p__root = 0);

    private:
        void _read();

    public:
        ~foo_t();

    private:
        uint8_t m_m;
        type_ternary_2nd_falsy_t* m__root;
        type_ternary_2nd_falsy_t* m__parent;

    public:
        uint8_t m() const { return m_m; }
        type_ternary_2nd_falsy_t* _root() const { return m__root; }
        virtual type_ternary_2nd_falsy_t* _parent() const { return m__parent; }
    };

private:
    bool f_null_ut;
    foo_t* m_null_ut;
    bool n_null_ut;

public:
    bool _is_null_null_ut() { null_ut(); return n_null_ut; };

private:

public:
    foo_t* null_ut();

private:
    bool f_v_float_zero;
    double m_v_float_zero;

public:
    double v_float_zero();

private:
    bool f_t;
    bool m_t;

public:
    bool t();

private:
    bool f_v_int_neg_zero;
    int32_t m_v_int_neg_zero;

public:
    int32_t v_int_neg_zero();

private:
    bool f_v_int_zero;
    int8_t m_v_int_zero;

public:
    int8_t v_int_zero();

private:
    bool f_v_false;
    bool m_v_false;

public:
    bool v_false();

private:
    bool f_v_str_empty;
    std::string m_v_str_empty;

public:
    std::string v_str_empty();

private:
    bool f_v_int_array_empty;
    std::vector<uint8_t>* m_v_int_array_empty;

public:
    std::vector<uint8_t>* v_int_array_empty();

private:
    bool f_v_null_ut;
    foo_t* m_v_null_ut;

public:
    foo_t* v_null_ut();

private:
    bool f_v_float_neg_zero;
    double m_v_float_neg_zero;

public:
    double v_float_neg_zero();

private:
    bool f_v_str_w_zero;
    std::string m_v_str_w_zero;

public:
    std::string v_str_w_zero();

private:
    uint8_t m_int_truthy;
    foo_t* m_ut;
    std::vector<uint8_t>* m_int_array;
    std::vector<uint8_t>* m_int_array_empty;
    type_ternary_2nd_falsy_t* m__root;
    kaitai::kstruct* m__parent;

public:
    uint8_t int_truthy() const { return m_int_truthy; }
    foo_t* ut() const { return m_ut; }
    std::vector<uint8_t>* int_array() const { return m_int_array; }
    std::vector<uint8_t>* int_array_empty() const { return m_int_array_empty; }
    type_ternary_2nd_falsy_t* _root() const { return m__root; }
    virtual kaitai::kstruct* _parent() const { return m__parent; }
};

#endif  // TYPE_TERNARY_2ND_FALSY_H_
