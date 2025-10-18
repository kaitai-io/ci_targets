#ifndef TYPE_TERNARY_OPAQUE_H_
#define TYPE_TERNARY_OPAQUE_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

class type_ternary_opaque_t;

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include "hello_world.h"

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class type_ternary_opaque_t : public kaitai::kstruct {

public:

    type_ternary_opaque_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, type_ternary_opaque_t* p__root = 0);

private:
    void _read();
    void _clean_up();

public:
    ~type_ternary_opaque_t();
    hello_world_t* dif();
    bool is_hack();
    hello_world_t* dif_wo_hack() const { return m_dif_wo_hack; }
    hello_world_t* dif_with_hack() const { return m_dif_with_hack; }
    type_ternary_opaque_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
    std::string _raw_dif_wo_hack() const { return m__raw_dif_wo_hack; }
    kaitai::kstream* _io__raw_dif_wo_hack() const { return m__io__raw_dif_wo_hack; }
    std::string _raw_dif_with_hack() const { return m__raw_dif_with_hack; }
    kaitai::kstream* _io__raw_dif_with_hack() const { return m__io__raw_dif_with_hack; }
    std::string _raw__raw_dif_with_hack() const { return m__raw__raw_dif_with_hack; }

private:
    bool f_dif;
    hello_world_t* m_dif;
    bool f_is_hack;
    bool m_is_hack;
    hello_world_t* m_dif_wo_hack;
    bool n_dif_wo_hack;

public:
    bool _is_null_dif_wo_hack() { dif_wo_hack(); return n_dif_wo_hack; };

private:
    hello_world_t* m_dif_with_hack;
    bool n_dif_with_hack;

public:
    bool _is_null_dif_with_hack() { dif_with_hack(); return n_dif_with_hack; };

private:
    type_ternary_opaque_t* m__root;
    kaitai::kstruct* m__parent;
    std::string m__raw_dif_wo_hack;
    bool n__raw_dif_wo_hack;

public:
    bool _is_null__raw_dif_wo_hack() { _raw_dif_wo_hack(); return n__raw_dif_wo_hack; };

private:
    kaitai::kstream* m__io__raw_dif_wo_hack;
    std::string m__raw_dif_with_hack;
    bool n__raw_dif_with_hack;

public:
    bool _is_null__raw_dif_with_hack() { _raw_dif_with_hack(); return n__raw_dif_with_hack; };

private:
    kaitai::kstream* m__io__raw_dif_with_hack;
    std::string m__raw__raw_dif_with_hack;
    bool n__raw__raw_dif_with_hack;

public:
    bool _is_null__raw__raw_dif_with_hack() { _raw__raw_dif_with_hack(); return n__raw__raw_dif_with_hack; };

private:
};

#endif  // TYPE_TERNARY_OPAQUE_H_
