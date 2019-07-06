#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"

#include <stdint.h>
#include <memory>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class if_instances_t : public kaitai::kstruct {

public:

    if_instances_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, if_instances_t* p__root = nullptr);

private:
    void _read();

public:
    ~if_instances_t();

private:
    bool f_never_happens;
    uint8_t m_never_happens;
    bool n_never_happens;

public:
    bool _is_null_never_happens() { never_happens(); return n_never_happens; };

private:

public:
    uint8_t never_happens();

private:
    if_instances_t* m__root;
    kaitai::kstruct* m__parent;

public:
    if_instances_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};
