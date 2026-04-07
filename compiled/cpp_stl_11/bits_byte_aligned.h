#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

class bits_byte_aligned_t;

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class bits_byte_aligned_t : public kaitai::kstruct {

public:
    class foo_t;

    bits_byte_aligned_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, bits_byte_aligned_t* p__root = nullptr);

private:
    void _read();

public:
    ~bits_byte_aligned_t();

    class foo_t : public kaitai::kstruct {

    public:

        foo_t(kaitai::kstream* p__io, bits_byte_aligned_t* p__parent = nullptr, bits_byte_aligned_t* p__root = nullptr);

    private:
        void _read();

    public:
        ~foo_t();
        uint64_t inner() const { return m_inner; }
        bits_byte_aligned_t* _root() const { return m__root; }
        bits_byte_aligned_t* _parent() const { return m__parent; }

    private:
        uint64_t m_inner;
        bits_byte_aligned_t* m__root;
        bits_byte_aligned_t* m__parent;
    };

public:
    uint64_t one() const { return m_one; }
    uint8_t byte_1() const { return m_byte_1; }
    uint64_t two() const { return m_two; }
    bool three() const { return m_three; }
    std::string byte_2() const { return m_byte_2; }
    uint64_t four() const { return m_four; }
    foo_t* byte_3() const { return m_byte_3.get(); }
    uint64_t full_byte() const { return m_full_byte; }
    uint8_t byte_4() const { return m_byte_4; }
    uint64_t five() const { return m_five; }
    std::string bytes_term() const { return m_bytes_term; }
    uint64_t six() const { return m_six; }
    bits_byte_aligned_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
    std::string _raw_byte_3() const { return m__raw_byte_3; }
    kaitai::kstream* _io__raw_byte_3() const { return m__io__raw_byte_3.get(); }

private:
    uint64_t m_one;
    uint8_t m_byte_1;
    uint64_t m_two;
    bool m_three;
    std::string m_byte_2;
    uint64_t m_four;
    std::unique_ptr<foo_t> m_byte_3;
    uint64_t m_full_byte;
    uint8_t m_byte_4;
    uint64_t m_five;
    std::string m_bytes_term;
    uint64_t m_six;
    bits_byte_aligned_t* m__root;
    kaitai::kstruct* m__parent;
    std::string m__raw_byte_3;
    std::unique_ptr<kaitai::kstream> m__io__raw_byte_3;
};
