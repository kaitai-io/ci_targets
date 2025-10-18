#ifndef STR_EOS_PAD_TERM_EMPTY_H_
#define STR_EOS_PAD_TERM_EMPTY_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

class str_eos_pad_term_empty_t;

#include "kaitai/kaitaistruct.h"
#include <stdint.h>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class str_eos_pad_term_empty_t : public kaitai::kstruct {

public:
    class str_pad_type_t;
    class str_term_and_pad_type_t;
    class str_term_include_type_t;
    class str_term_type_t;

    str_eos_pad_term_empty_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, str_eos_pad_term_empty_t* p__root = 0);

private:
    void _read();
    void _clean_up();

public:
    ~str_eos_pad_term_empty_t();

    class str_pad_type_t : public kaitai::kstruct {

    public:

        str_pad_type_t(kaitai::kstream* p__io, str_eos_pad_term_empty_t* p__parent = 0, str_eos_pad_term_empty_t* p__root = 0);

    private:
        void _read();
        void _clean_up();

    public:
        ~str_pad_type_t();
        std::string value() const { return m_value; }
        str_eos_pad_term_empty_t* _root() const { return m__root; }
        str_eos_pad_term_empty_t* _parent() const { return m__parent; }

    private:
        std::string m_value;
        str_eos_pad_term_empty_t* m__root;
        str_eos_pad_term_empty_t* m__parent;
    };

    class str_term_and_pad_type_t : public kaitai::kstruct {

    public:

        str_term_and_pad_type_t(kaitai::kstream* p__io, str_eos_pad_term_empty_t* p__parent = 0, str_eos_pad_term_empty_t* p__root = 0);

    private:
        void _read();
        void _clean_up();

    public:
        ~str_term_and_pad_type_t();
        std::string value() const { return m_value; }
        str_eos_pad_term_empty_t* _root() const { return m__root; }
        str_eos_pad_term_empty_t* _parent() const { return m__parent; }

    private:
        std::string m_value;
        str_eos_pad_term_empty_t* m__root;
        str_eos_pad_term_empty_t* m__parent;
    };

    class str_term_include_type_t : public kaitai::kstruct {

    public:

        str_term_include_type_t(kaitai::kstream* p__io, str_eos_pad_term_empty_t* p__parent = 0, str_eos_pad_term_empty_t* p__root = 0);

    private:
        void _read();
        void _clean_up();

    public:
        ~str_term_include_type_t();
        std::string value() const { return m_value; }
        str_eos_pad_term_empty_t* _root() const { return m__root; }
        str_eos_pad_term_empty_t* _parent() const { return m__parent; }

    private:
        std::string m_value;
        str_eos_pad_term_empty_t* m__root;
        str_eos_pad_term_empty_t* m__parent;
    };

    class str_term_type_t : public kaitai::kstruct {

    public:

        str_term_type_t(kaitai::kstream* p__io, str_eos_pad_term_empty_t* p__parent = 0, str_eos_pad_term_empty_t* p__root = 0);

    private:
        void _read();
        void _clean_up();

    public:
        ~str_term_type_t();
        std::string value() const { return m_value; }
        str_eos_pad_term_empty_t* _root() const { return m__root; }
        str_eos_pad_term_empty_t* _parent() const { return m__parent; }

    private:
        std::string m_value;
        str_eos_pad_term_empty_t* m__root;
        str_eos_pad_term_empty_t* m__parent;
    };

public:
    str_pad_type_t* str_pad() const { return m_str_pad; }
    str_term_type_t* str_term() const { return m_str_term; }
    str_term_and_pad_type_t* str_term_and_pad() const { return m_str_term_and_pad; }
    str_term_include_type_t* str_term_include() const { return m_str_term_include; }
    str_eos_pad_term_empty_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
    std::string _raw_str_pad() const { return m__raw_str_pad; }
    kaitai::kstream* _io__raw_str_pad() const { return m__io__raw_str_pad; }
    std::string _raw_str_term() const { return m__raw_str_term; }
    kaitai::kstream* _io__raw_str_term() const { return m__io__raw_str_term; }
    std::string _raw_str_term_and_pad() const { return m__raw_str_term_and_pad; }
    kaitai::kstream* _io__raw_str_term_and_pad() const { return m__io__raw_str_term_and_pad; }
    std::string _raw_str_term_include() const { return m__raw_str_term_include; }
    kaitai::kstream* _io__raw_str_term_include() const { return m__io__raw_str_term_include; }

private:
    str_pad_type_t* m_str_pad;
    str_term_type_t* m_str_term;
    str_term_and_pad_type_t* m_str_term_and_pad;
    str_term_include_type_t* m_str_term_include;
    str_eos_pad_term_empty_t* m__root;
    kaitai::kstruct* m__parent;
    std::string m__raw_str_pad;
    kaitai::kstream* m__io__raw_str_pad;
    std::string m__raw_str_term;
    kaitai::kstream* m__io__raw_str_term;
    std::string m__raw_str_term_and_pad;
    kaitai::kstream* m__io__raw_str_term_and_pad;
    std::string m__raw_str_term_include;
    kaitai::kstream* m__io__raw_str_term_include;
};

#endif  // STR_EOS_PAD_TERM_EMPTY_H_
