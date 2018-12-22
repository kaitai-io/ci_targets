#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"

#include <stdint.h>
#include <memory>

#if KAITAI_STRUCT_VERSION < 7000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.7 or later is required"
#endif

class params_def_t : public kaitai::kstruct {

public:

    params_def_t(uint32_t p_len, bool p_has_trailer, kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, params_def_t* p__root = nullptr);

private:
    void _read();

public:
    ~params_def_t();

private:
    std::string m_buf;
    uint8_t m_trailer;
    bool n_trailer;

public:
    bool _is_null_trailer() { trailer(); return n_trailer; };

private:
    uint32_t m_len;
    bool m_has_trailer;
    params_def_t* m__root;
    kaitai::kstruct* m__parent;

public:
    std::string buf() const { return m_buf; }
    uint8_t trailer() const { return m_trailer; }
    uint32_t len() const { return m_len; }
    bool has_trailer() const { return m_has_trailer; }
    params_def_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};
