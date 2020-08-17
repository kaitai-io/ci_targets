#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class bits_simple_le_t : public kaitai::kstruct {

public:

    bits_simple_le_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, bits_simple_le_t* p__root = nullptr);

private:
    void _read();

public:

private:
    void _clean_up();

public:
    ~bits_simple_le_t();

private:
    bool f_test_if_b1;
    int8_t m_test_if_b1;
    bool n_test_if_b1;

public:
    bool _is_null_test_if_b1() { test_if_b1(); return n_test_if_b1; };

private:

public:
    int8_t test_if_b1();

private:
    uint64_t m_byte_1;
    uint64_t m_byte_2;
    bool m_bits_a;
    uint64_t m_bits_b;
    uint64_t m_bits_c;
    uint64_t m_large_bits_1;
    uint64_t m_spacer;
    uint64_t m_large_bits_2;
    int16_t m_normal_s2;
    uint64_t m_byte_8_9_10;
    uint64_t m_byte_11_to_14;
    uint64_t m_byte_15_to_19;
    uint64_t m_byte_20_to_27;
    bits_simple_le_t* m__root;
    kaitai::kstruct* m__parent;

public:
    uint64_t byte_1() const { return m_byte_1; }
    uint64_t byte_2() const { return m_byte_2; }
    bool bits_a() const { return m_bits_a; }
    uint64_t bits_b() const { return m_bits_b; }
    uint64_t bits_c() const { return m_bits_c; }
    uint64_t large_bits_1() const { return m_large_bits_1; }
    uint64_t spacer() const { return m_spacer; }
    uint64_t large_bits_2() const { return m_large_bits_2; }
    int16_t normal_s2() const { return m_normal_s2; }
    uint64_t byte_8_9_10() const { return m_byte_8_9_10; }
    uint64_t byte_11_to_14() const { return m_byte_11_to_14; }
    uint64_t byte_15_to_19() const { return m_byte_15_to_19; }
    uint64_t byte_20_to_27() const { return m_byte_20_to_27; }
    bits_simple_le_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};
