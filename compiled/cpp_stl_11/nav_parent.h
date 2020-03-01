#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>
#include <vector>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class navParent_t : public kaitai::kstruct {

public:
    class headerObj_t;
    class indexObj_t;
    class entry_t;

    navParent_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, navParent_t* p__root = nullptr);

private:
    void _read();

public:
    ~navParent_t();

    class headerObj_t : public kaitai::kstruct {

    public:

        headerObj_t(kaitai::kstream* p__io, navParent_t* p__parent = nullptr, navParent_t* p__root = nullptr);

    private:
        void _read();

    public:
        ~headerObj_t();

    private:
        uint32_t m_qty_entries;
        uint32_t m_filename_len;
        navParent_t* m__root;
        navParent_t* m__parent;

    public:
        uint32_t qty_entries() const { return m_qty_entries; }
        uint32_t filename_len() const { return m_filename_len; }
        navParent_t* _root() const { return m__root; }
        navParent_t* _parent() const { return m__parent; }
    };

    class indexObj_t : public kaitai::kstruct {

    public:

        indexObj_t(kaitai::kstream* p__io, navParent_t* p__parent = nullptr, navParent_t* p__root = nullptr);

    private:
        void _read();

    public:
        ~indexObj_t();

    private:
        std::string m_magic;
        std::unique_ptr<std::vector<std::unique_ptr<entry_t>>> m_entries;
        navParent_t* m__root;
        navParent_t* m__parent;

    public:
        std::string magic() const { return m_magic; }
        std::vector<std::unique_ptr<entry_t>>* entries() const { return m_entries.get(); }
        navParent_t* _root() const { return m__root; }
        navParent_t* _parent() const { return m__parent; }
    };

    class entry_t : public kaitai::kstruct {

    public:

        entry_t(kaitai::kstream* p__io, navParent_t::indexObj_t* p__parent = nullptr, navParent_t* p__root = nullptr);

    private:
        void _read();

    public:
        ~entry_t();

    private:
        std::string m_filename;
        navParent_t* m__root;
        navParent_t::indexObj_t* m__parent;

    public:
        std::string filename() const { return m_filename; }
        navParent_t* _root() const { return m__root; }
        navParent_t::indexObj_t* _parent() const { return m__parent; }
    };

private:
    std::unique_ptr<headerObj_t> m_header;
    std::unique_ptr<indexObj_t> m_index;
    navParent_t* m__root;
    kaitai::kstruct* m__parent;

public:
    headerObj_t* header() const { return m_header.get(); }
    indexObj_t* index() const { return m_index.get(); }
    navParent_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};
