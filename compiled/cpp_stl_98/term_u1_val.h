#ifndef TERM_U1_VAL_H_
#define TERM_U1_VAL_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

class term_u1_val_t;

#include "kaitai/kaitaistruct.h"
#include <stdint.h>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class term_u1_val_t : public kaitai::kstruct {

public:

    term_u1_val_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, term_u1_val_t* p__root = 0);

private:
    void _read();
    void _clean_up();

public:
    ~term_u1_val_t();

private:
    std::string m_foo;
    std::string m_bar;
    term_u1_val_t* m__root;
    kaitai::kstruct* m__parent;

public:
    std::string foo() const { return m_foo; }
    std::string bar() const { return m_bar; }
    term_u1_val_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};

#endif  // TERM_U1_VAL_H_
