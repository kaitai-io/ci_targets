#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>
#include "term_strz.h"

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif
class term_strz_t;

class opaque_external_type_t : public kaitai::kstruct {

public:

    opaque_external_type_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, opaque_external_type_t* p__root = nullptr);

private:
    void _read();
    void _clean_up();

public:
    ~opaque_external_type_t();

private:
    std::unique_ptr<term_strz_t> m_one;
    opaque_external_type_t* m__root;
    kaitai::kstruct* m__parent;

public:
    term_strz_t* one() const { return m_one.get(); }
    opaque_external_type_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};
