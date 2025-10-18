#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

class str_encodings_escaping_enc_t;

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class str_encodings_escaping_enc_t : public kaitai::kstruct {

public:
    class str1_wrapper_t;
    class str2_wrapper_t;
    class str3_wrapper_t;
    class str4_wrapper_t;

    str_encodings_escaping_enc_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, str_encodings_escaping_enc_t* p__root = nullptr);

private:
    void _read();
    void _clean_up();

public:
    ~str_encodings_escaping_enc_t();

    class str1_wrapper_t : public kaitai::kstruct {

    public:

        str1_wrapper_t(kaitai::kstream* p__io, str_encodings_escaping_enc_t* p__parent = nullptr, str_encodings_escaping_enc_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~str1_wrapper_t();
        std::string v();
        str_encodings_escaping_enc_t* _root() const { return m__root; }
        str_encodings_escaping_enc_t* _parent() const { return m__parent; }

    private:
        bool f_v;
        std::string m_v;
        str_encodings_escaping_enc_t* m__root;
        str_encodings_escaping_enc_t* m__parent;
    };

    class str2_wrapper_t : public kaitai::kstruct {

    public:

        str2_wrapper_t(kaitai::kstream* p__io, str_encodings_escaping_enc_t* p__parent = nullptr, str_encodings_escaping_enc_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~str2_wrapper_t();
        std::string v();
        str_encodings_escaping_enc_t* _root() const { return m__root; }
        str_encodings_escaping_enc_t* _parent() const { return m__parent; }

    private:
        bool f_v;
        std::string m_v;
        str_encodings_escaping_enc_t* m__root;
        str_encodings_escaping_enc_t* m__parent;
    };

    class str3_wrapper_t : public kaitai::kstruct {

    public:

        str3_wrapper_t(kaitai::kstream* p__io, str_encodings_escaping_enc_t* p__parent = nullptr, str_encodings_escaping_enc_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~str3_wrapper_t();
        std::string v();
        str_encodings_escaping_enc_t* _root() const { return m__root; }
        str_encodings_escaping_enc_t* _parent() const { return m__parent; }

    private:
        bool f_v;
        std::string m_v;
        str_encodings_escaping_enc_t* m__root;
        str_encodings_escaping_enc_t* m__parent;
    };

    class str4_wrapper_t : public kaitai::kstruct {

    public:

        str4_wrapper_t(kaitai::kstream* p__io, str_encodings_escaping_enc_t* p__parent = nullptr, str_encodings_escaping_enc_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~str4_wrapper_t();
        std::string v();
        str_encodings_escaping_enc_t* _root() const { return m__root; }
        str_encodings_escaping_enc_t* _parent() const { return m__parent; }

    private:
        bool f_v;
        std::string m_v;
        str_encodings_escaping_enc_t* m__root;
        str_encodings_escaping_enc_t* m__parent;
    };

public:
    uint16_t len_of_1() const { return m_len_of_1; }
    str1_wrapper_t* str1() const { return m_str1.get(); }
    uint16_t len_of_2() const { return m_len_of_2; }
    str2_wrapper_t* str2() const { return m_str2.get(); }
    uint16_t len_of_3() const { return m_len_of_3; }
    str3_wrapper_t* str3() const { return m_str3.get(); }
    uint16_t len_of_4() const { return m_len_of_4; }
    str4_wrapper_t* str4() const { return m_str4.get(); }
    str_encodings_escaping_enc_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
    std::string _raw_str1() const { return m__raw_str1; }
    kaitai::kstream* _io__raw_str1() const { return m__io__raw_str1.get(); }
    std::string _raw_str2() const { return m__raw_str2; }
    kaitai::kstream* _io__raw_str2() const { return m__io__raw_str2.get(); }
    std::string _raw_str3() const { return m__raw_str3; }
    kaitai::kstream* _io__raw_str3() const { return m__io__raw_str3.get(); }
    std::string _raw_str4() const { return m__raw_str4; }
    kaitai::kstream* _io__raw_str4() const { return m__io__raw_str4.get(); }

private:
    uint16_t m_len_of_1;
    std::unique_ptr<str1_wrapper_t> m_str1;
    uint16_t m_len_of_2;
    std::unique_ptr<str2_wrapper_t> m_str2;
    uint16_t m_len_of_3;
    std::unique_ptr<str3_wrapper_t> m_str3;
    uint16_t m_len_of_4;
    std::unique_ptr<str4_wrapper_t> m_str4;
    str_encodings_escaping_enc_t* m__root;
    kaitai::kstruct* m__parent;
    std::string m__raw_str1;
    std::unique_ptr<kaitai::kstream> m__io__raw_str1;
    std::string m__raw_str2;
    std::unique_ptr<kaitai::kstream> m__io__raw_str2;
    std::string m__raw_str3;
    std::unique_ptr<kaitai::kstream> m__io__raw_str3;
    std::string m__raw_str4;
    std::unique_ptr<kaitai::kstream> m__io__raw_str4;
};
