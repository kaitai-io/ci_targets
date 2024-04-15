#ifndef PARAMS_CALL_EXTRA_PARENS_H_
#define PARAMS_CALL_EXTRA_PARENS_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

class params_call_extra_parens_t;

#include "kaitai/kaitaistruct.h"
#include <stdint.h>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class params_call_extra_parens_t : public kaitai::kstruct {

public:
    class my_str1_t;

    params_call_extra_parens_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, params_call_extra_parens_t* p__root = 0);

private:
    void _read();
    void _clean_up();

public:
    ~params_call_extra_parens_t();

    class my_str1_t : public kaitai::kstruct {

    public:

        my_str1_t(uint32_t p_len, kaitai::kstream* p__io, params_call_extra_parens_t* p__parent = 0, params_call_extra_parens_t* p__root = 0);

    private:
        void _read();
        void _clean_up();

    public:
        ~my_str1_t();

    private:
        std::string m_body;
        uint32_t m_len;
        params_call_extra_parens_t* m__root;
        params_call_extra_parens_t* m__parent;

    public:
        std::string body() const { return m_body; }
        uint32_t len() const { return m_len; }
        params_call_extra_parens_t* _root() const { return m__root; }
        params_call_extra_parens_t* _parent() const { return m__parent; }
    };

private:
    my_str1_t* m_buf1;
    params_call_extra_parens_t* m__root;
    kaitai::kstruct* m__parent;

public:
    my_str1_t* buf1() const { return m_buf1; }
    params_call_extra_parens_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};

#endif  // PARAMS_CALL_EXTRA_PARENS_H_
