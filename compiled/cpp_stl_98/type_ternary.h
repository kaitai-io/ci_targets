#ifndef TYPE_TERNARY_H_
#define TYPE_TERNARY_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

class type_ternary_t;

#include "kaitai/kaitaistruct.h"
#include <stdint.h>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class type_ternary_t : public kaitai::kstruct {

public:
    class dummy_t;

    type_ternary_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, type_ternary_t* p__root = 0);

private:
    void _read();
    void _clean_up();

public:
    ~type_ternary_t();

    class dummy_t : public kaitai::kstruct {

    public:

        dummy_t(kaitai::kstream* p__io, type_ternary_t* p__parent = 0, type_ternary_t* p__root = 0);

    private:
        void _read();
        void _clean_up();

    public:
        ~dummy_t();

    private:
        uint8_t m_value;
        type_ternary_t* m__root;
        type_ternary_t* m__parent;

    public:
        uint8_t value() const { return m_value; }
        type_ternary_t* _root() const { return m__root; }
        type_ternary_t* _parent() const { return m__parent; }
    };

private:
    bool f_dif;
    dummy_t* m_dif;

public:
    dummy_t* dif();

private:
    bool f_dif_value;
    uint8_t m_dif_value;

public:
    uint8_t dif_value();

private:
    bool f_is_hack;
    bool m_is_hack;

public:
    bool is_hack();

private:
    dummy_t* m_dif_wo_hack;
    bool n_dif_wo_hack;

public:
    bool _is_null_dif_wo_hack() { dif_wo_hack(); return n_dif_wo_hack; };

private:
    dummy_t* m_dif_with_hack;
    type_ternary_t* m__root;
    kaitai::kstruct* m__parent;
    std::string m__raw_dif_wo_hack;
    bool n__raw_dif_wo_hack;

public:
    bool _is_null__raw_dif_wo_hack() { _raw_dif_wo_hack(); return n__raw_dif_wo_hack; };

private:
    kaitai::kstream* m__io__raw_dif_wo_hack;
    std::string m__raw_dif_with_hack;
    kaitai::kstream* m__io__raw_dif_with_hack;
    std::string m__raw__raw_dif_with_hack;

public:
    dummy_t* dif_wo_hack() const { return m_dif_wo_hack; }
    dummy_t* dif_with_hack() const { return m_dif_with_hack; }
    type_ternary_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
    std::string _raw_dif_wo_hack() const { return m__raw_dif_wo_hack; }
    kaitai::kstream* _io__raw_dif_wo_hack() const { return m__io__raw_dif_wo_hack; }
    std::string _raw_dif_with_hack() const { return m__raw_dif_with_hack; }
    kaitai::kstream* _io__raw_dif_with_hack() const { return m__io__raw_dif_with_hack; }
    std::string _raw__raw_dif_with_hack() const { return m__raw__raw_dif_with_hack; }
};

#endif  // TYPE_TERNARY_H_
