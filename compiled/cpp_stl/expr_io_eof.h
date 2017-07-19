#ifndef EXPR_IO_EOF_H_
#define EXPR_IO_EOF_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <kaitai/kaitaistruct.h>
#include <kaitai/kaitaistream.h>

#include <stdint.h>

#if KAITAI_STRUCT_VERSION < 7000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.7 or later is required"
#endif

class expr_io_eof_t : public kaitai::kstruct {

public:
    class one_or_two_t;

    expr_io_eof_t(kaitai::kstream* p_io, kaitai::kstruct* p_parent = 0, expr_io_eof_t* p_root = 0);
    void _read();
    ~expr_io_eof_t();

    class one_or_two_t : public kaitai::kstruct {

    public:

        one_or_two_t(kaitai::kstream* p_io, expr_io_eof_t* p_parent = 0, expr_io_eof_t* p_root = 0);
        void _read();
        ~one_or_two_t();

    private:
        bool f_reflect_eof;
        bool m_reflect_eof;

    public:
        bool reflect_eof();

    private:
        uint32_t m_one;
        uint32_t m_two;
        bool n_two;

    public:
        bool _is_null_two() { two(); return n_two; };

    private:
        expr_io_eof_t* m__root;
        expr_io_eof_t* m__parent;

    public:
        uint32_t one() const { return m_one; }
        uint32_t two() const { return m_two; }
        expr_io_eof_t* _root() const { return m__root; }
        expr_io_eof_t* _parent() const { return m__parent; }
    };

private:
    one_or_two_t* m_substream1;
    one_or_two_t* m_substream2;
    expr_io_eof_t* m__root;
    kaitai::kstruct* m__parent;
    std::string m__raw_substream1;
    kaitai::kstream* m__io__raw_substream1;
    std::string m__raw_substream2;
    kaitai::kstream* m__io__raw_substream2;

public:
    one_or_two_t* substream1() const { return m_substream1; }
    one_or_two_t* substream2() const { return m_substream2; }
    expr_io_eof_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
    std::string _raw_substream1() const { return m__raw_substream1; }
    kaitai::kstream* _io__raw_substream1() const { return m__io__raw_substream1; }
    std::string _raw_substream2() const { return m__raw_substream2; }
    kaitai::kstream* _io__raw_substream2() const { return m__io__raw_substream2; }
};

#endif  // EXPR_IO_EOF_H_
