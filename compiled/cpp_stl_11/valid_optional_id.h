#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class valid_optional_id_t : public kaitai::kstruct {

public:

    valid_optional_id_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, valid_optional_id_t* p__root = nullptr);

private:
    void _read();
    void _clean_up();

public:
    ~valid_optional_id_t();

private:
    std::string m__unnamed0;
    uint8_t m__unnamed1;
    int8_t m__unnamed2;
    valid_optional_id_t* m__root;
    kaitai::kstruct* m__parent;

public:
    std::string _unnamed0() const { return m__unnamed0; }
    uint8_t _unnamed1() const { return m__unnamed1; }
    int8_t _unnamed2() const { return m__unnamed2; }
    valid_optional_id_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};
