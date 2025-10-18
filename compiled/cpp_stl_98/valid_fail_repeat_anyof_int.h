#ifndef VALID_FAIL_REPEAT_ANYOF_INT_H_
#define VALID_FAIL_REPEAT_ANYOF_INT_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

class valid_fail_repeat_anyof_int_t;

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <vector>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class valid_fail_repeat_anyof_int_t : public kaitai::kstruct {

public:

    valid_fail_repeat_anyof_int_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, valid_fail_repeat_anyof_int_t* p__root = 0);

private:
    void _read();
    void _clean_up();

public:
    ~valid_fail_repeat_anyof_int_t();
    std::vector<uint8_t>* foo() const { return m_foo; }
    valid_fail_repeat_anyof_int_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }

private:
    std::vector<uint8_t>* m_foo;
    valid_fail_repeat_anyof_int_t* m__root;
    kaitai::kstruct* m__parent;
};

#endif  // VALID_FAIL_REPEAT_ANYOF_INT_H_
