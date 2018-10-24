#ifndef IMPORTS_ABS_H_
#define IMPORTS_ABS_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"

#include <stdint.h>

#if KAITAI_STRUCT_VERSION < 7000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.7 or later is required"
#endif
class vlq_base128_le_t;

class imports_abs_t : public kaitai::kstruct {

public:

    imports_abs_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, imports_abs_t* p__root = 0);

private:
    void _read();

public:
    ~imports_abs_t();

private:
    vlq_base128_le_t* m_len;
    std::string m_body;
    imports_abs_t* m__root;
    kaitai::kstruct* m__parent;
    kaitai::kstream* m__io_body;

public:
    vlq_base128_le_t* len() const { return m_len; }
    std::string body() const { return m_body; }
    imports_abs_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
    kaitai::kstream* _io_body() const { return m__io_body; }
};

#endif  // IMPORTS_ABS_H_
