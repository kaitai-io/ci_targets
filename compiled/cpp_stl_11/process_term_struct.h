#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

class process_term_struct_t;

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class process_term_struct_t : public kaitai::kstruct {

public:
    class bytes_wrapper_t;

    process_term_struct_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, process_term_struct_t* p__root = nullptr);

private:
    void _read();
    void _clean_up();

public:
    ~process_term_struct_t();

    class bytes_wrapper_t : public kaitai::kstruct {

    public:

        bytes_wrapper_t(kaitai::kstream* p__io, process_term_struct_t* p__parent = nullptr, process_term_struct_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~bytes_wrapper_t();
        std::string value() const { return m_value; }
        process_term_struct_t* _root() const { return m__root; }
        process_term_struct_t* _parent() const { return m__parent; }

    private:
        std::string m_value;
        process_term_struct_t* m__root;
        process_term_struct_t* m__parent;
    };

public:
    bytes_wrapper_t* s1() const { return m_s1.get(); }
    bytes_wrapper_t* s2() const { return m_s2.get(); }
    bytes_wrapper_t* s3() const { return m_s3.get(); }
    process_term_struct_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
    std::string _raw_s1() const { return m__raw_s1; }
    kaitai::kstream* _io__raw_s1() const { return m__io__raw_s1.get(); }
    std::string _raw__raw_s1() const { return m__raw__raw_s1; }
    std::string _raw_s2() const { return m__raw_s2; }
    kaitai::kstream* _io__raw_s2() const { return m__io__raw_s2.get(); }
    std::string _raw__raw_s2() const { return m__raw__raw_s2; }
    std::string _raw_s3() const { return m__raw_s3; }
    kaitai::kstream* _io__raw_s3() const { return m__io__raw_s3.get(); }
    std::string _raw__raw_s3() const { return m__raw__raw_s3; }

private:
    std::unique_ptr<bytes_wrapper_t> m_s1;
    std::unique_ptr<bytes_wrapper_t> m_s2;
    std::unique_ptr<bytes_wrapper_t> m_s3;
    process_term_struct_t* m__root;
    kaitai::kstruct* m__parent;
    std::string m__raw_s1;
    std::unique_ptr<kaitai::kstream> m__io__raw_s1;
    std::string m__raw__raw_s1;
    std::string m__raw_s2;
    std::unique_ptr<kaitai::kstream> m__io__raw_s2;
    std::string m__raw__raw_s2;
    std::string m__raw_s3;
    std::unique_ptr<kaitai::kstream> m__io__raw_s3;
    std::string m__raw__raw_s3;
};
