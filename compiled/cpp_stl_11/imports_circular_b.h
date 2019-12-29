#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif
class imports_circular_a_t;

class imports_circular_b_t : public kaitai::kstruct {

public:

    imports_circular_b_t(kaitai::kstream* p__io, std::unique_ptr<kaitai::kstruct> p__parent = nullptr, imports_circular_b_t* p__root = nullptr);

private:
    void _read();

public:
    ~imports_circular_b_t();

private:
    uint8_t m_initial;
    std::unique_ptr<imports_circular_a_t> m_back_ref;
    bool n_back_ref;

public:
    bool _is_null_back_ref() { back_ref(); return n_back_ref; };

private:
    imports_circular_b_t* m__root;
    std::unique_ptr<kaitai::kstruct> m__parent;

public:
    uint8_t initial() const { return m_initial; }
    imports_circular_a_t* back_ref() const { return m_back_ref.get(); }
    imports_circular_b_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent.get(); }
};
