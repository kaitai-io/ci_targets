#ifndef IMPORTS_ABS_ABS_H_
#define IMPORTS_ABS_ABS_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include "/for_abs_imports/imported_and_abs.h"

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif
class imported_and_abs_t;

class imports_abs_abs_t : public kaitai::kstruct {

public:

    imports_abs_abs_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, imports_abs_abs_t* p__root = 0);

private:
    void _read();

public:
    ~imports_abs_abs_t();
    void _clean_up();

private:
    uint8_t m_one;
    imported_and_abs_t* m_two;
    imports_abs_abs_t* m__root;
    kaitai::kstruct* m__parent;

public:
    uint8_t one() const { return m_one; }
    imported_and_abs_t* two() const { return m_two; }
    imports_abs_abs_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};

#endif  // IMPORTS_ABS_ABS_H_
