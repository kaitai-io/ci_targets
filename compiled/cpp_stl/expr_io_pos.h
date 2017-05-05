#ifndef EXPR_IO_POS_H_
#define EXPR_IO_POS_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <kaitai/kaitaistruct.h>
#include <kaitai/kaitaistream.h>

#include <stdint.h>

#if KAITAI_STRUCT_VERSION < 7000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.7 or later is required"
#endif

class expr_io_pos_t : public kaitai::kstruct {

public:
    class all_plus_number_t;

    expr_io_pos_t(kaitai::kstream* p_io, kaitai::kstruct* p_parent = 0, expr_io_pos_t* p_root = 0);
    ~expr_io_pos_t();

    class all_plus_number_t : public kaitai::kstruct {

    public:

        all_plus_number_t(kaitai::kstream* p_io, expr_io_pos_t* p_parent = 0, expr_io_pos_t* p_root = 0);
        ~all_plus_number_t();

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
    all_plus_number_t* m_substream1;
    all_plus_number_t* m_substream2;
    expr_io_pos_t* m__root;
    kaitai::kstruct* m__parent;
    std::string m__raw_substream1;
    kaitai::kstream* m__io__raw_substream1;
    std::string m__raw_substream2;
    kaitai::kstream* m__io__raw_substream2;

public:
    all_plus_number_t* substream1() const { return m_substream1; }
    all_plus_number_t* substream2() const { return m_substream2; }
    expr_io_pos_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
    std::string _raw_substream1() const { return m__raw_substream1; }
    kaitai::kstream* _io__raw_substream1() const { return m__io__raw_substream1; }
    std::string _raw_substream2() const { return m__raw_substream2; }
    kaitai::kstream* _io__raw_substream2() const { return m__io__raw_substream2; }
};

#endif  // EXPR_IO_POS_H_
