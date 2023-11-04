#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>
#include <vector>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class position_in_seq_t : public kaitai::kstruct {

public:
    class header_obj_t;

    position_in_seq_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, position_in_seq_t* p__root = nullptr);

private:
    void _read();
    void _clean_up();

public:
    ~position_in_seq_t();

    class header_obj_t : public kaitai::kstruct {

    public:

        header_obj_t(kaitai::kstream* p__io, position_in_seq_t* p__parent = nullptr, position_in_seq_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~header_obj_t();

    private:
        uint32_t m_qty_numbers;
        position_in_seq_t* m__root;
        position_in_seq_t* m__parent;

    public:
        uint32_t qty_numbers() const { return m_qty_numbers; }
        position_in_seq_t* _root() const { return m__root; }
        position_in_seq_t* _parent() const { return m__parent; }
    };

private:
    bool f_header;
    std::unique_ptr<header_obj_t> m_header;

public:
    header_obj_t* header();

private:
    std::unique_ptr<std::vector<uint8_t>> m_numbers;
    position_in_seq_t* m__root;
    kaitai::kstruct* m__parent;

public:
    std::vector<uint8_t>* numbers() const { return m_numbers.get(); }
    position_in_seq_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};
