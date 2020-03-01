#ifndef PARAMS_CALL_SHORT_H_
#define PARAMS_CALL_SHORT_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class paramsCallShort_t : public kaitai::kstruct {

public:
    class myStr1_t;
    class myStr2_t;

    paramsCallShort_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, paramsCallShort_t* p__root = 0);

private:
    void _read();

public:
    ~paramsCallShort_t();

    class myStr1_t : public kaitai::kstruct {

    public:

        myStr1_t(uint32_t p_len, kaitai::kstream* p__io, paramsCallShort_t* p__parent = 0, paramsCallShort_t* p__root = 0);

    private:
        void _read();

    public:
        ~myStr1_t();

    private:
        std::string m_body;
        uint32_t m_len;
        paramsCallShort_t* m__root;
        paramsCallShort_t* m__parent;

    public:
        std::string body() const { return m_body; }
        uint32_t len() const { return m_len; }
        paramsCallShort_t* _root() const { return m__root; }
        paramsCallShort_t* _parent() const { return m__parent; }
    };

    class myStr2_t : public kaitai::kstruct {

    public:

        myStr2_t(uint32_t p_len, bool p_has_trailer, kaitai::kstream* p__io, paramsCallShort_t* p__parent = 0, paramsCallShort_t* p__root = 0);

    private:
        void _read();

    public:
        ~myStr2_t();

    private:
        std::string m_body;
        uint8_t m_trailer;
        bool n_trailer;

    public:
        bool _is_null_trailer() { trailer(); return n_trailer; };

    private:
        uint32_t m_len;
        bool m_has_trailer;
        paramsCallShort_t* m__root;
        paramsCallShort_t* m__parent;

    public:
        std::string body() const { return m_body; }
        uint8_t trailer() const { return m_trailer; }
        uint32_t len() const { return m_len; }
        bool has_trailer() const { return m_has_trailer; }
        paramsCallShort_t* _root() const { return m__root; }
        paramsCallShort_t* _parent() const { return m__parent; }
    };

private:
    myStr1_t* m_buf1;
    myStr2_t* m_buf2;
    paramsCallShort_t* m__root;
    kaitai::kstruct* m__parent;

public:
    myStr1_t* buf1() const { return m_buf1; }
    myStr2_t* buf2() const { return m_buf2; }
    paramsCallShort_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};

#endif  // PARAMS_CALL_SHORT_H_
