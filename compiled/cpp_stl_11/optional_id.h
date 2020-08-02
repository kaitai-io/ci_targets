#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class optional_id_t : public kaitai::kstruct {

public:

    optional_id_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, optional_id_t* p__root = nullptr);

private:
    void _read();

public:
    ~optional_id_t();
    void _clean_up();

private:
    uint8_t m__unnamed0;
    uint8_t m__unnamed1;
    std::string m__unnamed2;
    optional_id_t* m__root;
    kaitai::kstruct* m__parent;

public:
    uint8_t _unnamed0() const { return m__unnamed0; }
    uint8_t _unnamed1() const { return m__unnamed1; }
    std::string _unnamed2() const { return m__unnamed2; }
    optional_id_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};
