#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class params_call_short_t : public kaitai::kstruct {

public:
    class my_str1_t;
    class my_str2_t;

    params_call_short_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, params_call_short_t* p__root = nullptr);

private:
    void _read();

public:

private:
    void _clean_up();

public:
    ~params_call_short_t();

    class my_str1_t : public kaitai::kstruct {

    public:

        my_str1_t(uint32_t p_len, kaitai::kstream* p__io, params_call_short_t* p__parent = nullptr, params_call_short_t* p__root = nullptr);

    private:
        void _read();

    public:

    private:
        void _clean_up();

    public:
        ~my_str1_t();

    private:
        std::string m_body;
        uint32_t m_len;
        params_call_short_t* m__root;
        params_call_short_t* m__parent;

    public:
        std::string body() const { return m_body; }
        uint32_t len() const { return m_len; }
        params_call_short_t* _root() const { return m__root; }
        params_call_short_t* _parent() const { return m__parent; }
    };

    class my_str2_t : public kaitai::kstruct {

    public:

        my_str2_t(uint32_t p_len, bool p_has_trailer, kaitai::kstream* p__io, params_call_short_t* p__parent = nullptr, params_call_short_t* p__root = nullptr);

    private:
        void _read();

    public:

    private:
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
        params_call_short_t* m__root;
        params_call_short_t* m__parent;

    public:
        std::string body() const { return m_body; }
        uint8_t trailer() const { return m_trailer; }
        uint32_t len() const { return m_len; }
        bool has_trailer() const { return m_has_trailer; }
        params_call_short_t* _root() const { return m__root; }
        params_call_short_t* _parent() const { return m__parent; }
    };

private:
    std::unique_ptr<my_str1_t> m_buf1;
    std::unique_ptr<my_str2_t> m_buf2;
    params_call_short_t* m__root;
    kaitai::kstruct* m__parent;

public:
    my_str1_t* buf1() const { return m_buf1.get(); }
    my_str2_t* buf2() const { return m_buf2.get(); }
    params_call_short_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};
