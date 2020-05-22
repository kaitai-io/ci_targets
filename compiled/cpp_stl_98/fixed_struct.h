#ifndef FIXED_STRUCT_H_
#define FIXED_STRUCT_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class fixed_struct_t : public kaitai::kstruct {

public:
    class header_t;

    fixed_struct_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, fixed_struct_t* p__root = 0);

private:
    void _read();

public:
    ~fixed_struct_t();

    class header_t : public kaitai::kstruct {

    public:

        header_t(kaitai::kstream* p__io, fixed_struct_t* p__parent = 0, fixed_struct_t* p__root = 0);

    private:
        void _read();

    public:
        ~header_t();

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
        std::string m_magic_uint_le;
        uint16_t m_uint16le;
        uint32_t m_uint32le;
        uint64_t m_uint64le;
        std::string m_magic_sint_le;
        int16_t m_sint16le;
        int32_t m_sint32le;
        int64_t m_sint64le;
        std::string m_magic_uint_be;
        uint16_t m_uint16be;
        uint32_t m_uint32be;
        uint64_t m_uint64be;
        std::string m_magic_sint_be;
        int16_t m_sint16be;
        int32_t m_sint32be;
        int64_t m_sint64be;
        fixed_struct_t* m__root;
        fixed_struct_t* m__parent;

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
        std::string magic_uint_le() const { return m_magic_uint_le; }
        uint16_t uint16le() const { return m_uint16le; }
        uint32_t uint32le() const { return m_uint32le; }
        uint64_t uint64le() const { return m_uint64le; }
        std::string magic_sint_le() const { return m_magic_sint_le; }
        int16_t sint16le() const { return m_sint16le; }
        int32_t sint32le() const { return m_sint32le; }
        int64_t sint64le() const { return m_sint64le; }
        std::string magic_uint_be() const { return m_magic_uint_be; }
        uint16_t uint16be() const { return m_uint16be; }
        uint32_t uint32be() const { return m_uint32be; }
        uint64_t uint64be() const { return m_uint64be; }
        std::string magic_sint_be() const { return m_magic_sint_be; }
        int16_t sint16be() const { return m_sint16be; }
        int32_t sint32be() const { return m_sint32be; }
        int64_t sint64be() const { return m_sint64be; }
        fixed_struct_t* _root() const { return m__root; }
        virtual fixed_struct_t* _parent() const { return m__parent; }
    };

private:
    bool f_hdr;
    header_t* m_hdr;

public:
    header_t* hdr();

private:
    fixed_struct_t* m__root;
    kaitai::kstruct* m__parent;

public:
    fixed_struct_t* _root() const { return m__root; }
    virtual kaitai::kstruct* _parent() const { return m__parent; }
};

#endif  // FIXED_STRUCT_H_
