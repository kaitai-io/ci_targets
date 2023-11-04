#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class integers_min_max_t : public kaitai::kstruct {

public:
    class unsigned_t;
    class signed_t;

    integers_min_max_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, integers_min_max_t* p__root = nullptr);

private:
    void _read();
    void _clean_up();

public:
    ~integers_min_max_t();

    class unsigned_t : public kaitai::kstruct {

    public:

        unsigned_t(kaitai::kstream* p__io, integers_min_max_t* p__parent = nullptr, integers_min_max_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~unsigned_t();

    private:
        uint8_t m_u1;
        uint16_t m_u2le;
        uint32_t m_u4le;
        uint64_t m_u8le;
        uint16_t m_u2be;
        uint32_t m_u4be;
        uint64_t m_u8be;
        integers_min_max_t* m__root;
        integers_min_max_t* m__parent;

    public:
        uint8_t u1() const { return m_u1; }
        uint16_t u2le() const { return m_u2le; }
        uint32_t u4le() const { return m_u4le; }
        uint64_t u8le() const { return m_u8le; }
        uint16_t u2be() const { return m_u2be; }
        uint32_t u4be() const { return m_u4be; }
        uint64_t u8be() const { return m_u8be; }
        integers_min_max_t* _root() const { return m__root; }
        integers_min_max_t* _parent() const { return m__parent; }
    };

    class signed_t : public kaitai::kstruct {

    public:

        signed_t(kaitai::kstream* p__io, integers_min_max_t* p__parent = nullptr, integers_min_max_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~signed_t();

    private:
        int8_t m_s1;
        int16_t m_s2le;
        int32_t m_s4le;
        int64_t m_s8le;
        int16_t m_s2be;
        int32_t m_s4be;
        int64_t m_s8be;
        integers_min_max_t* m__root;
        integers_min_max_t* m__parent;

    public:
        int8_t s1() const { return m_s1; }
        int16_t s2le() const { return m_s2le; }
        int32_t s4le() const { return m_s4le; }
        int64_t s8le() const { return m_s8le; }
        int16_t s2be() const { return m_s2be; }
        int32_t s4be() const { return m_s4be; }
        int64_t s8be() const { return m_s8be; }
        integers_min_max_t* _root() const { return m__root; }
        integers_min_max_t* _parent() const { return m__parent; }
    };

private:
    std::unique_ptr<unsigned_t> m_unsigned_min;
    std::unique_ptr<unsigned_t> m_unsigned_max;
    std::unique_ptr<signed_t> m_signed_min;
    std::unique_ptr<signed_t> m_signed_max;
    integers_min_max_t* m__root;
    kaitai::kstruct* m__parent;

public:
    unsigned_t* unsigned_min() const { return m_unsigned_min.get(); }
    unsigned_t* unsigned_max() const { return m_unsigned_max.get(); }
    signed_t* signed_min() const { return m_signed_min.get(); }
    signed_t* signed_max() const { return m_signed_max.get(); }
    integers_min_max_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};
