#ifndef BITS_SEQ_ENDIAN_COMBO_H_
#define BITS_SEQ_ENDIAN_COMBO_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class bits_seq_endian_combo_t : public kaitai::kstruct {

public:

    bits_seq_endian_combo_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, bits_seq_endian_combo_t* p__root = 0);

private:
    void _read();
    void _clean_up();

public:
    ~bits_seq_endian_combo_t();

private:
    uint64_t m_be1;
    uint64_t m_be2;
    uint64_t m_le3;
    uint64_t m_be4;
    uint64_t m_le5;
    uint64_t m_le6;
    uint64_t m_le7;
    bool m_be8;
    bits_seq_endian_combo_t* m__root;
    kaitai::kstruct* m__parent;

public:
    uint64_t be1() const { return m_be1; }
    uint64_t be2() const { return m_be2; }
    uint64_t le3() const { return m_le3; }
    uint64_t be4() const { return m_be4; }
    uint64_t le5() const { return m_le5; }
    uint64_t le6() const { return m_le6; }
    uint64_t le7() const { return m_le7; }
    bool be8() const { return m_be8; }
    bits_seq_endian_combo_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};

#endif  // BITS_SEQ_ENDIAN_COMBO_H_
