#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

class str_eos_pad_term_t;

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class str_eos_pad_term_t : public kaitai::kstruct {

public:
    class str_pad_type_t;
    class str_term_and_pad_type_t;
    class str_term_include_type_t;
    class str_term_type_t;

    str_eos_pad_term_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, str_eos_pad_term_t* p__root = nullptr);

private:
    void _read();
    void _clean_up();

public:
    ~str_eos_pad_term_t();

    class str_pad_type_t : public kaitai::kstruct {

    public:

        str_pad_type_t(kaitai::kstream* p__io, str_eos_pad_term_t* p__parent = nullptr, str_eos_pad_term_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~str_pad_type_t();

    private:
        std::string m_value;
        str_eos_pad_term_t* m__root;
        str_eos_pad_term_t* m__parent;

    public:
        std::string value() const { return m_value; }
        str_eos_pad_term_t* _root() const { return m__root; }
        str_eos_pad_term_t* _parent() const { return m__parent; }
    };

    class str_term_and_pad_type_t : public kaitai::kstruct {

    public:

        str_term_and_pad_type_t(kaitai::kstream* p__io, str_eos_pad_term_t* p__parent = nullptr, str_eos_pad_term_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~str_term_and_pad_type_t();

    private:
        std::string m_value;
        str_eos_pad_term_t* m__root;
        str_eos_pad_term_t* m__parent;

    public:
        std::string value() const { return m_value; }
        str_eos_pad_term_t* _root() const { return m__root; }
        str_eos_pad_term_t* _parent() const { return m__parent; }
    };

    class str_term_include_type_t : public kaitai::kstruct {

    public:

        str_term_include_type_t(kaitai::kstream* p__io, str_eos_pad_term_t* p__parent = nullptr, str_eos_pad_term_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~str_term_include_type_t();

    private:
        std::string m_value;
        str_eos_pad_term_t* m__root;
        str_eos_pad_term_t* m__parent;

    public:
        std::string value() const { return m_value; }
        str_eos_pad_term_t* _root() const { return m__root; }
        str_eos_pad_term_t* _parent() const { return m__parent; }
    };

    class str_term_type_t : public kaitai::kstruct {

    public:

        str_term_type_t(kaitai::kstream* p__io, str_eos_pad_term_t* p__parent = nullptr, str_eos_pad_term_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~str_term_type_t();

    private:
        std::string m_value;
        str_eos_pad_term_t* m__root;
        str_eos_pad_term_t* m__parent;

    public:
        std::string value() const { return m_value; }
        str_eos_pad_term_t* _root() const { return m__root; }
        str_eos_pad_term_t* _parent() const { return m__parent; }
    };

private:
    std::unique_ptr<str_pad_type_t> m_str_pad;
    std::unique_ptr<str_term_type_t> m_str_term;
    std::unique_ptr<str_term_and_pad_type_t> m_str_term_and_pad;
    std::unique_ptr<str_term_include_type_t> m_str_term_include;
    str_eos_pad_term_t* m__root;
    kaitai::kstruct* m__parent;
    std::string m__raw_str_pad;
    std::unique_ptr<kaitai::kstream> m__io__raw_str_pad;
    std::string m__raw_str_term;
    std::unique_ptr<kaitai::kstream> m__io__raw_str_term;
    std::string m__raw_str_term_and_pad;
    std::unique_ptr<kaitai::kstream> m__io__raw_str_term_and_pad;
    std::string m__raw_str_term_include;
    std::unique_ptr<kaitai::kstream> m__io__raw_str_term_include;

public:
    str_pad_type_t* str_pad() const { return m_str_pad.get(); }
    str_term_type_t* str_term() const { return m_str_term.get(); }
    str_term_and_pad_type_t* str_term_and_pad() const { return m_str_term_and_pad.get(); }
    str_term_include_type_t* str_term_include() const { return m_str_term_include.get(); }
    str_eos_pad_term_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
    std::string _raw_str_pad() const { return m__raw_str_pad; }
    kaitai::kstream* _io__raw_str_pad() const { return m__io__raw_str_pad.get(); }
    std::string _raw_str_term() const { return m__raw_str_term; }
    kaitai::kstream* _io__raw_str_term() const { return m__io__raw_str_term.get(); }
    std::string _raw_str_term_and_pad() const { return m__raw_str_term_and_pad; }
    kaitai::kstream* _io__raw_str_term_and_pad() const { return m__io__raw_str_term_and_pad.get(); }
    std::string _raw_str_term_include() const { return m__raw_str_term_include; }
    kaitai::kstream* _io__raw_str_term_include() const { return m__io__raw_str_term_include.get(); }
};
