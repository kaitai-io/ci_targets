#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class position_abs_t : public kaitai::kstruct {

public:
    class index_obj_t;

    position_abs_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, position_abs_t* p__root = nullptr);

private:
    void _read();
    void _clean_up();

public:
    ~position_abs_t();

    class index_obj_t : public kaitai::kstruct {

    public:

        index_obj_t(kaitai::kstream* p__io, position_abs_t* p__parent = nullptr, position_abs_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~index_obj_t();

    private:
        std::string m_entry;
        position_abs_t* m__root;
        position_abs_t* m__parent;

    public:
        std::string entry() const { return m_entry; }
        position_abs_t* _root() const { return m__root; }
        position_abs_t* _parent() const { return m__parent; }
    };

private:
    bool f_index;
    std::unique_ptr<index_obj_t> m_index;

public:
    index_obj_t* index();

private:
    uint32_t m_index_offset;
    position_abs_t* m__root;
    kaitai::kstruct* m__parent;

public:
    uint32_t index_offset() const { return m_index_offset; }
    position_abs_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};
