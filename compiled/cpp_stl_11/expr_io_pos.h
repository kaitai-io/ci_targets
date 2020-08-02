#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class expr_io_pos_t : public kaitai::kstruct {

public:
    class all_plus_number_t;

    expr_io_pos_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, expr_io_pos_t* p__root = nullptr);

private:
    void _read();

public:
    ~expr_io_pos_t();
    void _clean_up();

    class all_plus_number_t : public kaitai::kstruct {

    public:

        all_plus_number_t(kaitai::kstream* p__io, expr_io_pos_t* p__parent = nullptr, expr_io_pos_t* p__root = nullptr);

    private:
        void _read();

    public:
        ~all_plus_number_t();
        void _clean_up();

    private:
        std::string m_my_str;
        std::string m_body;
        uint16_t m_number;
        expr_io_pos_t* m__root;
        expr_io_pos_t* m__parent;

    public:
        std::string my_str() const { return m_my_str; }
        std::string body() const { return m_body; }
        uint16_t number() const { return m_number; }
        expr_io_pos_t* _root() const { return m__root; }
        expr_io_pos_t* _parent() const { return m__parent; }
    };

private:
    std::unique_ptr<all_plus_number_t> m_substream1;
    std::unique_ptr<all_plus_number_t> m_substream2;
    expr_io_pos_t* m__root;
    kaitai::kstruct* m__parent;
    std::string m__raw_substream1;
    std::unique_ptr<kaitai::kstream> m__io__raw_substream1;
    std::string m__raw_substream2;
    std::unique_ptr<kaitai::kstream> m__io__raw_substream2;

public:
    all_plus_number_t* substream1() const { return m_substream1.get(); }
    all_plus_number_t* substream2() const { return m_substream2.get(); }
    expr_io_pos_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
    std::string _raw_substream1() const { return m__raw_substream1; }
    kaitai::kstream* _io__raw_substream1() const { return m__io__raw_substream1.get(); }
    std::string _raw_substream2() const { return m__raw_substream2; }
    kaitai::kstream* _io__raw_substream2() const { return m__io__raw_substream2.get(); }
};
