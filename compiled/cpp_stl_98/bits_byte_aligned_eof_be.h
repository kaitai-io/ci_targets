#ifndef BITS_BYTE_ALIGNED_EOF_BE_H_
#define BITS_BYTE_ALIGNED_EOF_BE_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

class bits_byte_aligned_eof_be_t;

#include "kaitai/kaitaistruct.h"
#include <stdint.h>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class bits_byte_aligned_eof_be_t : public kaitai::kstruct {

public:

    bits_byte_aligned_eof_be_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, bits_byte_aligned_eof_be_t* p__root = 0);

private:
    void _read();
    void _clean_up();

public:
    ~bits_byte_aligned_eof_be_t();

private:
    std::string m_prebuf;
    uint64_t m_bits;
    bits_byte_aligned_eof_be_t* m__root;
    kaitai::kstruct* m__parent;

public:
    std::string prebuf() const { return m_prebuf; }
    uint64_t bits() const { return m_bits; }
    bits_byte_aligned_eof_be_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};

#endif  // BITS_BYTE_ALIGNED_EOF_BE_H_
