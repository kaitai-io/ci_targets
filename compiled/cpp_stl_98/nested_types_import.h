#ifndef NESTED_TYPES_IMPORT_H_
#define NESTED_TYPES_IMPORT_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class nested_types_import_t : public kaitai::kstruct {

public:

    nested_types_import_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, nested_types_import_t* p__root = 0);

private:
    void _read();
    void _clean_up();

public:
    ~nested_types_import_t();

private:
    nested_types3_t::subtype_a_t::subtype_cc_t* m_a_cc;
    nested_types3_t::subtype_a_t::subtype_c_t::subtype_d_t* m_a_c_d;
    nested_types3_t::subtype_b_t* m_b;
    nested_types_import_t* m__root;
    kaitai::kstruct* m__parent;

public:
    nested_types3_t::subtype_a_t::subtype_cc_t* a_cc() const { return m_a_cc; }
    nested_types3_t::subtype_a_t::subtype_c_t::subtype_d_t* a_c_d() const { return m_a_c_d; }
    nested_types3_t::subtype_b_t* b() const { return m_b; }
    nested_types_import_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};

#endif  // NESTED_TYPES_IMPORT_H_
