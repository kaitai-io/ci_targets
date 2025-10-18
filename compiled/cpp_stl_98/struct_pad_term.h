#ifndef STRUCT_PAD_TERM_H_
#define STRUCT_PAD_TERM_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

class struct_pad_term_t;

#include "kaitai/kaitaistruct.h"
#include <stdint.h>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class struct_pad_term_t : public kaitai::kstruct {

public:
    class bytes_wrapper_t;

    struct_pad_term_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, struct_pad_term_t* p__root = 0);

private:
    void _read();
    void _clean_up();

public:
    ~struct_pad_term_t();

    class bytes_wrapper_t : public kaitai::kstruct {

    public:

        bytes_wrapper_t(kaitai::kstream* p__io, struct_pad_term_t* p__parent = 0, struct_pad_term_t* p__root = 0);

    private:
        void _read();
        void _clean_up();

    public:
        ~bytes_wrapper_t();
        std::string value() const { return m_value; }
        struct_pad_term_t* _root() const { return m__root; }
        struct_pad_term_t* _parent() const { return m__parent; }

    private:
        std::string m_value;
        struct_pad_term_t* m__root;
        struct_pad_term_t* m__parent;
    };

public:
    bytes_wrapper_t* str_pad() const { return m_str_pad; }
    bytes_wrapper_t* str_term() const { return m_str_term; }
    bytes_wrapper_t* str_term_and_pad() const { return m_str_term_and_pad; }
    bytes_wrapper_t* str_term_include() const { return m_str_term_include; }
    struct_pad_term_t* _root() const { return m__root; }
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
    bytes_wrapper_t* m_str_pad;
    bytes_wrapper_t* m_str_term;
    bytes_wrapper_t* m_str_term_and_pad;
    bytes_wrapper_t* m_str_term_include;
    struct_pad_term_t* m__root;
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

#endif  // STRUCT_PAD_TERM_H_
