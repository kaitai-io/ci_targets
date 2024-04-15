#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

class eof_exception_sized_t;

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class eof_exception_sized_t : public kaitai::kstruct {

public:
    class foo_t;

    eof_exception_sized_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, eof_exception_sized_t* p__root = nullptr);

private:
    void _read();
    void _clean_up();

public:
    ~eof_exception_sized_t();

    class foo_t : public kaitai::kstruct {

    public:

        foo_t(kaitai::kstream* p__io, eof_exception_sized_t* p__parent = nullptr, eof_exception_sized_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~foo_t();

    private:
        eof_exception_sized_t* m__root;
        eof_exception_sized_t* m__parent;

    public:
        eof_exception_sized_t* _root() const { return m__root; }
        eof_exception_sized_t* _parent() const { return m__parent; }
    };

private:
    std::unique_ptr<foo_t> m_buf;
    eof_exception_sized_t* m__root;
    kaitai::kstruct* m__parent;
    std::string m__raw_buf;
    std::unique_ptr<kaitai::kstream> m__io__raw_buf;

public:
    foo_t* buf() const { return m_buf.get(); }
    eof_exception_sized_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
    std::string _raw_buf() const { return m__raw_buf; }
    kaitai::kstream* _io__raw_buf() const { return m__io__raw_buf.get(); }
};
