#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class exprIoPos_t : public kaitai::kstruct {

public:
    class allPlusNumber_t;

    exprIoPos_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, exprIoPos_t* p__root = nullptr);

private:
    void _read();

public:
    ~exprIoPos_t();

    class allPlusNumber_t : public kaitai::kstruct {

    public:

        allPlusNumber_t(kaitai::kstream* p__io, exprIoPos_t* p__parent = nullptr, exprIoPos_t* p__root = nullptr);

    private:
        void _read();

    public:
        ~allPlusNumber_t();

    private:
        std::string m_my_str;
        std::string m_body;
        uint16_t m_number;
        exprIoPos_t* m__root;
        exprIoPos_t* m__parent;

    public:
        std::string my_str() const { return m_my_str; }
        std::string body() const { return m_body; }
        uint16_t number() const { return m_number; }
        exprIoPos_t* _root() const { return m__root; }
        exprIoPos_t* _parent() const { return m__parent; }
    };

private:
    std::unique_ptr<allPlusNumber_t> m_substream1;
    std::unique_ptr<allPlusNumber_t> m_substream2;
    exprIoPos_t* m__root;
    kaitai::kstruct* m__parent;
    std::string m__raw_substream1;
    kaitai::kstream* m__io__raw_substream1;
    std::string m__raw_substream2;
    kaitai::kstream* m__io__raw_substream2;

public:
    allPlusNumber_t* substream1() const { return m_substream1.get(); }
    allPlusNumber_t* substream2() const { return m_substream2.get(); }
    exprIoPos_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
    std::string _raw_substream1() const { return m__raw_substream1; }
    kaitai::kstream* _io__raw_substream1() const { return m__io__raw_substream1; }
    std::string _raw_substream2() const { return m__raw_substream2; }
    kaitai::kstream* _io__raw_substream2() const { return m__io__raw_substream2; }
};
