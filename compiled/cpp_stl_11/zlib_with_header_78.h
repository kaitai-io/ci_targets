#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

class zlib_with_header_78_t;

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class zlib_with_header_78_t : public kaitai::kstruct {

public:

    zlib_with_header_78_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, zlib_with_header_78_t* p__root = nullptr);

private:
    void _read();
    void _clean_up();

public:
    ~zlib_with_header_78_t();

private:
    std::string m_data;
    zlib_with_header_78_t* m__root;
    kaitai::kstruct* m__parent;
    std::string m__raw_data;

public:
    std::string data() const { return m_data; }
    zlib_with_header_78_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
    std::string _raw_data() const { return m__raw_data; }
};
