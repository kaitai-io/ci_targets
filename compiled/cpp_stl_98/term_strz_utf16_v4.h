#ifndef TERM_STRZ_UTF16_V4_H_
#define TERM_STRZ_UTF16_V4_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

class term_strz_utf16_v4_t;

#include "kaitai/kaitaistruct.h"
#include <stdint.h>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class term_strz_utf16_v4_t : public kaitai::kstruct {

public:
    class s1_type_t;
    class s2_type_t;
    class s3_type_t;

    term_strz_utf16_v4_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, term_strz_utf16_v4_t* p__root = 0);

private:
    void _read();
    void _clean_up();

public:
    ~term_strz_utf16_v4_t();

    class s1_type_t : public kaitai::kstruct {

    public:

        s1_type_t(kaitai::kstream* p__io, term_strz_utf16_v4_t* p__parent = 0, term_strz_utf16_v4_t* p__root = 0);

    private:
        void _read();
        void _clean_up();

    public:
        ~s1_type_t();

    private:
        std::string m_value;
        term_strz_utf16_v4_t* m__root;
        term_strz_utf16_v4_t* m__parent;

    public:
        std::string value() const { return m_value; }
        term_strz_utf16_v4_t* _root() const { return m__root; }
        term_strz_utf16_v4_t* _parent() const { return m__parent; }
    };

    class s2_type_t : public kaitai::kstruct {

    public:

        s2_type_t(kaitai::kstream* p__io, term_strz_utf16_v4_t* p__parent = 0, term_strz_utf16_v4_t* p__root = 0);

    private:
        void _read();
        void _clean_up();

    public:
        ~s2_type_t();

    private:
        std::string m_value;
        term_strz_utf16_v4_t* m__root;
        term_strz_utf16_v4_t* m__parent;

    public:
        std::string value() const { return m_value; }
        term_strz_utf16_v4_t* _root() const { return m__root; }
        term_strz_utf16_v4_t* _parent() const { return m__parent; }
    };

    class s3_type_t : public kaitai::kstruct {

    public:

        s3_type_t(kaitai::kstream* p__io, term_strz_utf16_v4_t* p__parent = 0, term_strz_utf16_v4_t* p__root = 0);

    private:
        void _read();
        void _clean_up();

    public:
        ~s3_type_t();

    private:
        std::string m_value;
        term_strz_utf16_v4_t* m__root;
        term_strz_utf16_v4_t* m__parent;

    public:
        std::string value() const { return m_value; }
        term_strz_utf16_v4_t* _root() const { return m__root; }
        term_strz_utf16_v4_t* _parent() const { return m__parent; }
    };

private:
    s1_type_t* m_s1;
    std::string m_skip_term1;
    s2_type_t* m_s2;
    std::string m_skip_term2;
    s3_type_t* m_s3;
    term_strz_utf16_v4_t* m__root;
    kaitai::kstruct* m__parent;
    std::string m__raw_s1;
    kaitai::kstream* m__io__raw_s1;
    std::string m__raw_s2;
    kaitai::kstream* m__io__raw_s2;
    std::string m__raw_s3;
    kaitai::kstream* m__io__raw_s3;

public:
    s1_type_t* s1() const { return m_s1; }
    std::string skip_term1() const { return m_skip_term1; }
    s2_type_t* s2() const { return m_s2; }
    std::string skip_term2() const { return m_skip_term2; }
    s3_type_t* s3() const { return m_s3; }
    term_strz_utf16_v4_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
    std::string _raw_s1() const { return m__raw_s1; }
    kaitai::kstream* _io__raw_s1() const { return m__io__raw_s1; }
    std::string _raw_s2() const { return m__raw_s2; }
    kaitai::kstream* _io__raw_s2() const { return m__io__raw_s2; }
    std::string _raw_s3() const { return m__raw_s3; }
    kaitai::kstream* _io__raw_s3() const { return m__io__raw_s3; }
};

#endif  // TERM_STRZ_UTF16_V4_H_
