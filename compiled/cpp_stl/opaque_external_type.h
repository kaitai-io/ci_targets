#ifndef OPAQUE_EXTERNAL_TYPE_H_
#define OPAQUE_EXTERNAL_TYPE_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <kaitai/kaitaistruct.h>
#include <kaitai/kaitaistream.h>

#include <stdint.h>
#include <vector>
#include <sstream>
#include <algorithm>

#if KAITAI_STRUCT_VERSION < 7000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.7 or later is required"
#endif
class term_strz_t;

class opaque_external_type_t : public kaitai::kstruct {

public:

    opaque_external_type_t(kaitai::kstream* p_io, kaitai::kstruct* p_parent = 0, opaque_external_type_t* p_root = 0);
    ~opaque_external_type_t();

private:
    term_strz_t* m_one;
    opaque_external_type_t* m__root;
    kaitai::kstruct* m__parent;

public:
    term_strz_t* one() const { return m_one; }
    opaque_external_type_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};

#endif  // OPAQUE_EXTERNAL_TYPE_H_
