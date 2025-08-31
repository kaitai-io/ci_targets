#ifndef TERM_STRUCT3_H_
#define TERM_STRUCT3_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

class term_struct3_t;

#include "kaitai/kaitaistruct.h"
#include <stdint.h>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class term_struct3_t : public kaitai::kstruct {

public:
    class bytes_wrapper_t;

    term_struct3_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, term_struct3_t* p__root = 0);

private:
    void _read();
    void _clean_up();

public:
    ~term_struct3_t();

    class bytes_wrapper_t : public kaitai::kstruct {

    public:

        bytes_wrapper_t(kaitai::kstream* p__io, term_struct3_t* p__parent = 0, term_struct3_t* p__root = 0);

    private:
        void _read();
        void _clean_up();

    public:
        ~bytes_wrapper_t();

    private:
        std::string m_value;
        term_struct3_t* m__root;
        term_struct3_t* m__parent;

    public:
        std::string value() const { return m_value; }
        term_struct3_t* _root() const { return m__root; }
        term_struct3_t* _parent() const { return m__parent; }
    };

private:
    bytes_wrapper_t* m_s1;
    bytes_wrapper_t* m_s2;
    bytes_wrapper_t* m_s3;
    term_struct3_t* m__root;
    kaitai::kstruct* m__parent;
    std::string m__raw_s1;
    kaitai::kstream* m__io__raw_s1;
    std::string m__raw_s2;
    kaitai::kstream* m__io__raw_s2;
    std::string m__raw_s3;
    kaitai::kstream* m__io__raw_s3;

public:
    bytes_wrapper_t* s1() const { return m_s1; }
    bytes_wrapper_t* s2() const { return m_s2; }
    bytes_wrapper_t* s3() const { return m_s3; }
    term_struct3_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
    std::string _raw_s1() const { return m__raw_s1; }
    kaitai::kstream* _io__raw_s1() const { return m__io__raw_s1; }
    std::string _raw_s2() const { return m__raw_s2; }
    kaitai::kstream* _io__raw_s2() const { return m__io__raw_s2; }
    std::string _raw_s3() const { return m__raw_s3; }
    kaitai::kstream* _io__raw_s3() const { return m__io__raw_s3; }
};

#endif  // TERM_STRUCT3_H_
