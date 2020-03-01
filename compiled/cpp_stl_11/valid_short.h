#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class validShort_t : public kaitai::kstruct {

public:

    validShort_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, validShort_t* p__root = nullptr);

private:
    void _read();

public:
    ~validShort_t();

private:
    std::string m_magic1;
    uint8_t m_uint8;
    int8_t m_sint8;
    std::string m_magic_uint;
    uint16_t m_uint16;
    uint32_t m_uint32;
    uint64_t m_uint64;
    std::string m_magic_sint;
    int16_t m_sint16;
    int32_t m_sint32;
    int64_t m_sint64;
    validShort_t* m__root;
    kaitai::kstruct* m__parent;

public:
    std::string magic1() const { return m_magic1; }
    uint8_t uint8() const { return m_uint8; }
    int8_t sint8() const { return m_sint8; }
    std::string magic_uint() const { return m_magic_uint; }
    uint16_t uint16() const { return m_uint16; }
    uint32_t uint32() const { return m_uint32; }
    uint64_t uint64() const { return m_uint64; }
    std::string magic_sint() const { return m_magic_sint; }
    int16_t sint16() const { return m_sint16; }
    int32_t sint32() const { return m_sint32; }
    int64_t sint64() const { return m_sint64; }
    validShort_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};
