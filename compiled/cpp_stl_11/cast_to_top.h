#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

class cast_to_top_t;

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class cast_to_top_t : public kaitai::kstruct {

public:

    cast_to_top_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, cast_to_top_t* p__root = nullptr);

private:
    void _read();
    void _clean_up();

public:
    ~cast_to_top_t();

private:
    bool f_header;
    std::unique_ptr<cast_to_top_t> m_header;

public:
    cast_to_top_t* header();

private:
    bool f_header_casted;
    cast_to_top_t* m_header_casted;

public:
    cast_to_top_t* header_casted();

private:
    uint8_t m_code;
    cast_to_top_t* m__root;
    kaitai::kstruct* m__parent;

public:
    uint8_t code() const { return m_code; }
    cast_to_top_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};
