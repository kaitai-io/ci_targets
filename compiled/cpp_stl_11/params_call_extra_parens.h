#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class paramsCallExtraParens_t : public kaitai::kstruct {

public:
    class myStr1_t;

    paramsCallExtraParens_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, paramsCallExtraParens_t* p__root = nullptr);

private:
    void _read();

public:
    ~paramsCallExtraParens_t();

    class myStr1_t : public kaitai::kstruct {

    public:

        myStr1_t(uint32_t p_len, kaitai::kstream* p__io, paramsCallExtraParens_t* p__parent = nullptr, paramsCallExtraParens_t* p__root = nullptr);

    private:
        void _read();

    public:
        ~myStr1_t();

    private:
        std::string m_body;
        uint32_t m_len;
        paramsCallExtraParens_t* m__root;
        paramsCallExtraParens_t* m__parent;

    public:
        std::string body() const { return m_body; }
        uint32_t len() const { return m_len; }
        paramsCallExtraParens_t* _root() const { return m__root; }
        paramsCallExtraParens_t* _parent() const { return m__parent; }
    };

private:
    std::unique_ptr<myStr1_t> m_buf1;
    paramsCallExtraParens_t* m__root;
    kaitai::kstruct* m__parent;

public:
    myStr1_t* buf1() const { return m_buf1.get(); }
    paramsCallExtraParens_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};
