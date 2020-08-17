#ifndef BITS_BYTE_ALIGNED_H_
#define BITS_BYTE_ALIGNED_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class bits_byte_aligned_t : public kaitai::kstruct {

public:

    bits_byte_aligned_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, bits_byte_aligned_t* p__root = 0);

private:
    void _read();

public:

private:
    void _clean_up();

public:
    ~bits_byte_aligned_t();

private:
    uint64_t m_one;
    uint8_t m_byte_1;
    uint64_t m_two;
    bool m_three;
    uint8_t m_byte_2;
    uint64_t m_four;
    std::string m_byte_3;
    uint64_t m_full_byte;
    uint8_t m_byte_4;
    bits_byte_aligned_t* m__root;
    kaitai::kstruct* m__parent;

public:
    uint64_t one() const { return m_one; }
    uint8_t byte_1() const { return m_byte_1; }
    uint64_t two() const { return m_two; }
    bool three() const { return m_three; }
    uint8_t byte_2() const { return m_byte_2; }
    uint64_t four() const { return m_four; }
    std::string byte_3() const { return m_byte_3; }
    uint64_t full_byte() const { return m_full_byte; }
    uint8_t byte_4() const { return m_byte_4; }
    bits_byte_aligned_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};

#endif  // BITS_BYTE_ALIGNED_H_
