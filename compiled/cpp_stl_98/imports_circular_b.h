#ifndef IMPORTS_CIRCULAR_B_H_
#define IMPORTS_CIRCULAR_B_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif
class imports_circular_a_t;

class imports_circular_b_t : public kaitai::kstruct {

public:

    imports_circular_b_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, imports_circular_b_t* p__root = 0);

private:
    void _read();

public:
    ~imports_circular_b_t();

private:
    uint8_t m_initial;
    imports_circular_a_t* m_back_ref;
    bool n_back_ref;

public:
    bool _is_null_back_ref() { back_ref(); return n_back_ref; };

private:
    imports_circular_b_t* m__root;
    kaitai::kstruct* m__parent;

public:
    uint8_t initial() const { return m_initial; }
    imports_circular_a_t* back_ref() const { return m_back_ref; }
    imports_circular_b_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};

#endif  // IMPORTS_CIRCULAR_B_H_
