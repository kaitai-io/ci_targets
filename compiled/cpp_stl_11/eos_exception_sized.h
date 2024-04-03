#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class eos_exception_sized_t : public kaitai::kstruct {

public:
    class data_t;
    class foo_t;

    eos_exception_sized_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, eos_exception_sized_t* p__root = nullptr);

private:
    void _read();
    void _clean_up();

public:
    ~eos_exception_sized_t();

    class data_t : public kaitai::kstruct {

    public:

        data_t(kaitai::kstream* p__io, eos_exception_sized_t* p__parent = nullptr, eos_exception_sized_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~data_t();

    private:
        std::unique_ptr<foo_t> m_buf;
        eos_exception_sized_t* m__root;
        eos_exception_sized_t* m__parent;
        std::string m__raw_buf;
        std::unique_ptr<kaitai::kstream> m__io__raw_buf;

    public:
        foo_t* buf() const { return m_buf.get(); }
        eos_exception_sized_t* _root() const { return m__root; }
        eos_exception_sized_t* _parent() const { return m__parent; }
        std::string _raw_buf() const { return m__raw_buf; }
        kaitai::kstream* _io__raw_buf() const { return m__io__raw_buf.get(); }
    };

    class foo_t : public kaitai::kstruct {

    public:

        foo_t(kaitai::kstream* p__io, eos_exception_sized_t::data_t* p__parent = nullptr, eos_exception_sized_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~foo_t();

    private:
        eos_exception_sized_t* m__root;
        eos_exception_sized_t::data_t* m__parent;

    public:
        eos_exception_sized_t* _root() const { return m__root; }
        eos_exception_sized_t::data_t* _parent() const { return m__parent; }
    };

private:
    std::unique_ptr<data_t> m_envelope;
    eos_exception_sized_t* m__root;
    kaitai::kstruct* m__parent;
    std::string m__raw_envelope;
    std::unique_ptr<kaitai::kstream> m__io__raw_envelope;

public:
    data_t* envelope() const { return m_envelope.get(); }
    eos_exception_sized_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
    std::string _raw_envelope() const { return m__raw_envelope; }
    kaitai::kstream* _io__raw_envelope() const { return m__io__raw_envelope.get(); }
};
