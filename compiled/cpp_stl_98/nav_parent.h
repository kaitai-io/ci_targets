#ifndef NAV_PARENT_H_
#define NAV_PARENT_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

class nav_parent_t;

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <vector>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class nav_parent_t : public kaitai::kstruct {

public:
    class entry_t;
    class header_obj_t;
    class index_obj_t;

    nav_parent_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, nav_parent_t* p__root = 0);

private:
    void _read();
    void _clean_up();

public:
    ~nav_parent_t();

    class entry_t : public kaitai::kstruct {

    public:

        entry_t(kaitai::kstream* p__io, nav_parent_t::index_obj_t* p__parent = 0, nav_parent_t* p__root = 0);

    private:
        void _read();
        void _clean_up();

    public:
        ~entry_t();
        std::string filename() const { return m_filename; }
        nav_parent_t* _root() const { return m__root; }
        nav_parent_t::index_obj_t* _parent() const { return m__parent; }

    private:
        std::string m_filename;
        nav_parent_t* m__root;
        nav_parent_t::index_obj_t* m__parent;
    };

    class header_obj_t : public kaitai::kstruct {

    public:

        header_obj_t(kaitai::kstream* p__io, nav_parent_t* p__parent = 0, nav_parent_t* p__root = 0);

    private:
        void _read();
        void _clean_up();

    public:
        ~header_obj_t();
        uint32_t qty_entries() const { return m_qty_entries; }
        uint32_t filename_len() const { return m_filename_len; }
        nav_parent_t* _root() const { return m__root; }
        nav_parent_t* _parent() const { return m__parent; }

    private:
        uint32_t m_qty_entries;
        uint32_t m_filename_len;
        nav_parent_t* m__root;
        nav_parent_t* m__parent;
    };

    class index_obj_t : public kaitai::kstruct {

    public:

        index_obj_t(kaitai::kstream* p__io, nav_parent_t* p__parent = 0, nav_parent_t* p__root = 0);

    private:
        void _read();
        void _clean_up();

    public:
        ~index_obj_t();
        std::string magic() const { return m_magic; }
        std::vector<entry_t*>* entries() const { return m_entries; }
        nav_parent_t* _root() const { return m__root; }
        nav_parent_t* _parent() const { return m__parent; }

    private:
        std::string m_magic;
        std::vector<entry_t*>* m_entries;
        nav_parent_t* m__root;
        nav_parent_t* m__parent;
    };

public:
    header_obj_t* header() const { return m_header; }
    index_obj_t* index() const { return m_index; }
    nav_parent_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }

private:
    header_obj_t* m_header;
    index_obj_t* m_index;
    nav_parent_t* m__root;
    kaitai::kstruct* m__parent;
};

#endif  // NAV_PARENT_H_
