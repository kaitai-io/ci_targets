#ifndef NAV_PARENT_RECURSIVE_H_
#define NAV_PARENT_RECURSIVE_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

class nav_parent_recursive_t;

#include "kaitai/kaitaistruct.h"
#include <stdint.h>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class nav_parent_recursive_t : public kaitai::kstruct {

public:

    nav_parent_recursive_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, nav_parent_recursive_t* p__root = 0);

private:
    void _read();
    void _clean_up();

public:
    ~nav_parent_recursive_t();
    uint8_t parent_value();
    uint8_t value() const { return m_value; }
    nav_parent_recursive_t* next() const { return m_next; }
    nav_parent_recursive_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }

private:
    bool f_parent_value;
    uint8_t m_parent_value;
    bool n_parent_value;

public:
    bool _is_null_parent_value() { parent_value(); return n_parent_value; };

private:
    uint8_t m_value;
    nav_parent_recursive_t* m_next;
    bool n_next;

public:
    bool _is_null_next() { next(); return n_next; };

private:
    nav_parent_recursive_t* m__root;
    kaitai::kstruct* m__parent;
};

#endif  // NAV_PARENT_RECURSIVE_H_
