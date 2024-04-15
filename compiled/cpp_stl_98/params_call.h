#ifndef PARAMS_CALL_H_
#define PARAMS_CALL_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

class params_call_t;

#include "kaitai/kaitaistruct.h"
#include <stdint.h>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class params_call_t : public kaitai::kstruct {

public:
    class my_str1_t;
    class my_str2_t;

    params_call_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, params_call_t* p__root = 0);

private:
    void _read();
    void _clean_up();

public:
    ~params_call_t();

    class my_str1_t : public kaitai::kstruct {

    public:

        my_str1_t(uint32_t p_len, kaitai::kstream* p__io, params_call_t* p__parent = 0, params_call_t* p__root = 0);

    private:
        void _read();
        void _clean_up();

    public:
        ~my_str1_t();

    private:
        std::string m_body;
        uint32_t m_len;
        params_call_t* m__root;
        params_call_t* m__parent;

    public:
        std::string body() const { return m_body; }
        uint32_t len() const { return m_len; }
        params_call_t* _root() const { return m__root; }
        params_call_t* _parent() const { return m__parent; }
    };

    class my_str2_t : public kaitai::kstruct {

    public:

        my_str2_t(uint32_t p_len, bool p_has_trailer, kaitai::kstream* p__io, params_call_t* p__parent = 0, params_call_t* p__root = 0);

    private:
        void _read();
        void _clean_up();

    public:
        ~my_str2_t();

    private:
        std::string m_body;
        uint8_t m_trailer;
        bool n_trailer;

    public:
        bool _is_null_trailer() { trailer(); return n_trailer; };

    private:
        uint32_t m_len;
        bool m_has_trailer;
        params_call_t* m__root;
        params_call_t* m__parent;

    public:
        std::string body() const { return m_body; }
        uint8_t trailer() const { return m_trailer; }
        uint32_t len() const { return m_len; }
        bool has_trailer() const { return m_has_trailer; }
        params_call_t* _root() const { return m__root; }
        params_call_t* _parent() const { return m__parent; }
    };

private:
    my_str1_t* m_buf1;
    my_str2_t* m_buf2;
    params_call_t* m__root;
    kaitai::kstruct* m__parent;

public:
    my_str1_t* buf1() const { return m_buf1; }
    my_str2_t* buf2() const { return m_buf2; }
    params_call_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};

#endif  // PARAMS_CALL_H_
