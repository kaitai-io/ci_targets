#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class str_encodings_utf16_t : public kaitai::kstruct {

public:
    class str_be_bom_removed_t;
    class str_le_bom_removed_t;

    str_encodings_utf16_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, str_encodings_utf16_t* p__root = nullptr);

private:
    void _read();
    void _clean_up();

public:
    ~str_encodings_utf16_t();

    class str_be_bom_removed_t : public kaitai::kstruct {

    public:

        str_be_bom_removed_t(kaitai::kstream* p__io, str_encodings_utf16_t* p__parent = nullptr, str_encodings_utf16_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~str_be_bom_removed_t();

    private:
        uint16_t m_bom;
        std::string m_str;
        str_encodings_utf16_t* m__root;
        str_encodings_utf16_t* m__parent;

    public:
        uint16_t bom() const { return m_bom; }
        std::string str() const { return m_str; }
        str_encodings_utf16_t* _root() const { return m__root; }
        str_encodings_utf16_t* _parent() const { return m__parent; }
    };

    class str_le_bom_removed_t : public kaitai::kstruct {

    public:

        str_le_bom_removed_t(kaitai::kstream* p__io, str_encodings_utf16_t* p__parent = nullptr, str_encodings_utf16_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~str_le_bom_removed_t();

    private:
        uint16_t m_bom;
        std::string m_str;
        str_encodings_utf16_t* m__root;
        str_encodings_utf16_t* m__parent;

    public:
        uint16_t bom() const { return m_bom; }
        std::string str() const { return m_str; }
        str_encodings_utf16_t* _root() const { return m__root; }
        str_encodings_utf16_t* _parent() const { return m__parent; }
    };

private:
    uint32_t m_len_be;
    std::unique_ptr<str_be_bom_removed_t> m_be_bom_removed;
    uint32_t m_len_le;
    std::unique_ptr<str_le_bom_removed_t> m_le_bom_removed;
    str_encodings_utf16_t* m__root;
    kaitai::kstruct* m__parent;
    std::string m__raw_be_bom_removed;
    std::unique_ptr<kaitai::kstream> m__io__raw_be_bom_removed;
    std::string m__raw_le_bom_removed;
    std::unique_ptr<kaitai::kstream> m__io__raw_le_bom_removed;

public:
    uint32_t len_be() const { return m_len_be; }
    str_be_bom_removed_t* be_bom_removed() const { return m_be_bom_removed.get(); }
    uint32_t len_le() const { return m_len_le; }
    str_le_bom_removed_t* le_bom_removed() const { return m_le_bom_removed.get(); }
    str_encodings_utf16_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
    std::string _raw_be_bom_removed() const { return m__raw_be_bom_removed; }
    kaitai::kstream* _io__raw_be_bom_removed() const { return m__io__raw_be_bom_removed.get(); }
    std::string _raw_le_bom_removed() const { return m__raw_le_bom_removed; }
    kaitai::kstream* _io__raw_le_bom_removed() const { return m__io__raw_le_bom_removed.get(); }
};
