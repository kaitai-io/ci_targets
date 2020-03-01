#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>
#include <vector>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class instanceIoUser_t : public kaitai::kstruct {

public:
    class entry_t;
    class stringsObj_t;

    instanceIoUser_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, instanceIoUser_t* p__root = nullptr);

private:
    void _read();

public:
    ~instanceIoUser_t();

    class entry_t : public kaitai::kstruct {

    public:

        entry_t(kaitai::kstream* p__io, instanceIoUser_t* p__parent = nullptr, instanceIoUser_t* p__root = nullptr);

    private:
        void _read();

    public:
        ~entry_t();

    private:
        bool f_name;
        std::string m_name;

    public:
        std::string name();

    private:
        uint32_t m_name_ofs;
        uint32_t m_value;
        instanceIoUser_t* m__root;
        instanceIoUser_t* m__parent;

    public:
        uint32_t name_ofs() const { return m_name_ofs; }
        uint32_t value() const { return m_value; }
        instanceIoUser_t* _root() const { return m__root; }
        instanceIoUser_t* _parent() const { return m__parent; }
    };

    class stringsObj_t : public kaitai::kstruct {

    public:

        stringsObj_t(kaitai::kstream* p__io, instanceIoUser_t* p__parent = nullptr, instanceIoUser_t* p__root = nullptr);

    private:
        void _read();

    public:
        ~stringsObj_t();

    private:
        std::unique_ptr<std::vector<std::string>> m_str;
        instanceIoUser_t* m__root;
        instanceIoUser_t* m__parent;

    public:
        std::vector<std::string>* str() const { return m_str.get(); }
        instanceIoUser_t* _root() const { return m__root; }
        instanceIoUser_t* _parent() const { return m__parent; }
    };

private:
    uint32_t m_qty_entries;
    std::unique_ptr<std::vector<std::unique_ptr<entry_t>>> m_entries;
    std::unique_ptr<stringsObj_t> m_strings;
    instanceIoUser_t* m__root;
    kaitai::kstruct* m__parent;
    std::string m__raw_strings;
    kaitai::kstream* m__io__raw_strings;

public:
    uint32_t qty_entries() const { return m_qty_entries; }
    std::vector<std::unique_ptr<entry_t>>* entries() const { return m_entries.get(); }
    stringsObj_t* strings() const { return m_strings.get(); }
    instanceIoUser_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
    std::string _raw_strings() const { return m__raw_strings; }
    kaitai::kstream* _io__raw_strings() const { return m__io__raw_strings; }
};
