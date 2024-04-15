#ifndef INSTANCE_IO_USER_H_
#define INSTANCE_IO_USER_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

class instance_io_user_t;

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <vector>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class instance_io_user_t : public kaitai::kstruct {

public:
    class entry_t;
    class strings_obj_t;

    instance_io_user_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, instance_io_user_t* p__root = 0);

private:
    void _read();
    void _clean_up();

public:
    ~instance_io_user_t();

    class entry_t : public kaitai::kstruct {

    public:

        entry_t(kaitai::kstream* p__io, instance_io_user_t* p__parent = 0, instance_io_user_t* p__root = 0);

    private:
        void _read();
        void _clean_up();

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
        instance_io_user_t* m__root;
        instance_io_user_t* m__parent;

    public:
        uint32_t name_ofs() const { return m_name_ofs; }
        uint32_t value() const { return m_value; }
        instance_io_user_t* _root() const { return m__root; }
        instance_io_user_t* _parent() const { return m__parent; }
    };

    class strings_obj_t : public kaitai::kstruct {

    public:

        strings_obj_t(kaitai::kstream* p__io, instance_io_user_t* p__parent = 0, instance_io_user_t* p__root = 0);

    private:
        void _read();
        void _clean_up();

    public:
        ~strings_obj_t();

    private:
        std::vector<std::string>* m_str;
        instance_io_user_t* m__root;
        instance_io_user_t* m__parent;

    public:
        std::vector<std::string>* str() const { return m_str; }
        instance_io_user_t* _root() const { return m__root; }
        instance_io_user_t* _parent() const { return m__parent; }
    };

private:
    uint32_t m_qty_entries;
    std::vector<entry_t*>* m_entries;
    strings_obj_t* m_strings;
    instance_io_user_t* m__root;
    kaitai::kstruct* m__parent;
    std::string m__raw_strings;
    kaitai::kstream* m__io__raw_strings;

public:
    uint32_t qty_entries() const { return m_qty_entries; }
    std::vector<entry_t*>* entries() const { return m_entries; }
    strings_obj_t* strings() const { return m_strings; }
    instance_io_user_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
    std::string _raw_strings() const { return m__raw_strings; }
    kaitai::kstream* _io__raw_strings() const { return m__io__raw_strings; }
};

#endif  // INSTANCE_IO_USER_H_
