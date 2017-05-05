#ifndef NAV_ROOT_H_
#define NAV_ROOT_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <kaitai/kaitaistruct.h>
#include <kaitai/kaitaistream.h>

#include <stdint.h>
#include <vector>

#if KAITAI_STRUCT_VERSION < 7000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.7 or later is required"
#endif

class nav_root_t : public kaitai::kstruct {

public:
    class header_obj_t;
    class index_obj_t;
    class entry_t;

    nav_root_t(kaitai::kstream* p_io, kaitai::kstruct* p_parent = 0, nav_root_t* p_root = 0);
    ~nav_root_t();

    class header_obj_t : public kaitai::kstruct {

    public:

        header_obj_t(kaitai::kstream* p_io, nav_root_t* p_parent = 0, nav_root_t* p_root = 0);
        ~header_obj_t();

    private:
        uint32_t m_qty_entries;
        uint32_t m_filename_len;
        nav_root_t* m__root;
        nav_root_t* m__parent;

    public:
        uint32_t qty_entries() const { return m_qty_entries; }
        uint32_t filename_len() const { return m_filename_len; }
        nav_root_t* _root() const { return m__root; }
        nav_root_t* _parent() const { return m__parent; }
    };

    class index_obj_t : public kaitai::kstruct {

    public:

        index_obj_t(kaitai::kstream* p_io, nav_root_t* p_parent = 0, nav_root_t* p_root = 0);
        ~index_obj_t();

    private:
        std::string m_magic;
        std::vector<entry_t*>* m_entries;
        nav_root_t* m__root;
        nav_root_t* m__parent;

    public:
        std::string magic() const { return m_magic; }
        std::vector<entry_t*>* entries() const { return m_entries; }
        nav_root_t* _root() const { return m__root; }
        nav_root_t* _parent() const { return m__parent; }
    };

    class entry_t : public kaitai::kstruct {

    public:

        entry_t(kaitai::kstream* p_io, nav_root_t::index_obj_t* p_parent = 0, nav_root_t* p_root = 0);
        ~entry_t();

    private:
        std::string m_filename;
        nav_root_t* m__root;
        nav_root_t::index_obj_t* m__parent;

    public:
        std::string filename() const { return m_filename; }
        nav_root_t* _root() const { return m__root; }
        nav_root_t::index_obj_t* _parent() const { return m__parent; }
    };

private:
    header_obj_t* m_header;
    index_obj_t* m_index;
    nav_root_t* m__root;
    kaitai::kstruct* m__parent;

public:
    header_obj_t* header() const { return m_header; }
    index_obj_t* index() const { return m_index; }
    nav_root_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};

#endif  // NAV_ROOT_H_
