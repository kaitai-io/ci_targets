#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class nav_root_recursive_t : public kaitai::kstruct {

public:

    nav_root_recursive_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, nav_root_recursive_t* p__root = nullptr);

private:
    void _read();
    void _clean_up();

public:
    ~nav_root_recursive_t();

private:
    bool f_root_value;
    uint8_t m_root_value;

public:
    uint8_t root_value();

private:
    uint8_t m_value;
    std::unique_ptr<nav_root_recursive_t> m_next;
    bool n_next;

public:
    bool _is_null_next() { next(); return n_next; };

private:
    nav_root_recursive_t* m__root;
    kaitai::kstruct* m__parent;

public:
    uint8_t value() const { return m_value; }
    nav_root_recursive_t* next() const { return m_next.get(); }
    nav_root_recursive_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};
