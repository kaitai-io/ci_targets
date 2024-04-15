#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

class process_to_user_t;

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class process_to_user_t : public kaitai::kstruct {

public:
    class just_str_t;

    process_to_user_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, process_to_user_t* p__root = nullptr);

private:
    void _read();
    void _clean_up();

public:
    ~process_to_user_t();

    class just_str_t : public kaitai::kstruct {

    public:

        just_str_t(kaitai::kstream* p__io, process_to_user_t* p__parent = nullptr, process_to_user_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~just_str_t();

    private:
        std::string m_str;
        process_to_user_t* m__root;
        process_to_user_t* m__parent;

    public:
        std::string str() const { return m_str; }
        process_to_user_t* _root() const { return m__root; }
        process_to_user_t* _parent() const { return m__parent; }
    };

private:
    std::unique_ptr<just_str_t> m_buf1;
    process_to_user_t* m__root;
    kaitai::kstruct* m__parent;
    std::string m__raw_buf1;
    std::unique_ptr<kaitai::kstream> m__io__raw_buf1;
    std::string m__raw__raw_buf1;

public:
    just_str_t* buf1() const { return m_buf1.get(); }
    process_to_user_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
    std::string _raw_buf1() const { return m__raw_buf1; }
    kaitai::kstream* _io__raw_buf1() const { return m__io__raw_buf1.get(); }
    std::string _raw__raw_buf1() const { return m__raw__raw_buf1; }
};
