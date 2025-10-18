#ifndef COMBINE_BOOL_H_
#define COMBINE_BOOL_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

class combine_bool_t;

#include "kaitai/kaitaistruct.h"
#include <stdint.h>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class combine_bool_t : public kaitai::kstruct {

public:

    combine_bool_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, combine_bool_t* p__root = 0);

private:
    void _read();
    void _clean_up();

public:
    ~combine_bool_t();
    bool bool_calc();
    bool bool_calc_bit();
    bool bool_bit() const { return m_bool_bit; }
    combine_bool_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }

private:
    bool f_bool_calc;
    bool m_bool_calc;
    bool f_bool_calc_bit;
    bool m_bool_calc_bit;
    bool m_bool_bit;
    combine_bool_t* m__root;
    kaitai::kstruct* m__parent;
};

#endif  // COMBINE_BOOL_H_
