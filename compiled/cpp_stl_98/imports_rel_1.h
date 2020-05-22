#ifndef IMPORTS_REL_1_H_
#define IMPORTS_REL_1_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include "for_rel_imports/imported_1.h"

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif
class imported_1_t;

class imports_rel_1_t : public kaitai::kstruct {

public:

    imports_rel_1_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, imports_rel_1_t* p__root = 0);

private:
    void _read();

public:
    ~imports_rel_1_t();

private:
    uint8_t m_one;
    imported_1_t* m_two;
    imports_rel_1_t* m__root;
    kaitai::kstruct* m__parent;

public:
    uint8_t one() const { return m_one; }
    imported_1_t* two() const { return m_two; }
    imports_rel_1_t* _root() const { return m__root; }
    virtual kaitai::kstruct* _parent() const { return m__parent; }
};

#endif  // IMPORTS_REL_1_H_
