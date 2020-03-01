#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class exprIoEof_t : public kaitai::kstruct {

public:
    class oneOrTwo_t;

    exprIoEof_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, exprIoEof_t* p__root = nullptr);

private:
    void _read();

public:
    ~exprIoEof_t();

    class oneOrTwo_t : public kaitai::kstruct {

    public:

        oneOrTwo_t(kaitai::kstream* p__io, exprIoEof_t* p__parent = nullptr, exprIoEof_t* p__root = nullptr);

    private:
        void _read();

    public:
        ~oneOrTwo_t();

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
        exprIoEof_t* m__root;
        exprIoEof_t* m__parent;

    public:
        uint32_t one() const { return m_one; }
        uint32_t two() const { return m_two; }
        exprIoEof_t* _root() const { return m__root; }
        exprIoEof_t* _parent() const { return m__parent; }
    };

private:
    std::unique_ptr<oneOrTwo_t> m_substream1;
    std::unique_ptr<oneOrTwo_t> m_substream2;
    exprIoEof_t* m__root;
    kaitai::kstruct* m__parent;
    std::string m__raw_substream1;
    kaitai::kstream* m__io__raw_substream1;
    std::string m__raw_substream2;
    kaitai::kstream* m__io__raw_substream2;

public:
    oneOrTwo_t* substream1() const { return m_substream1.get(); }
    oneOrTwo_t* substream2() const { return m_substream2.get(); }
    exprIoEof_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
    std::string _raw_substream1() const { return m__raw_substream1; }
    kaitai::kstream* _io__raw_substream1() const { return m__io__raw_substream1; }
    std::string _raw_substream2() const { return m__raw_substream2; }
    kaitai::kstream* _io__raw_substream2() const { return m__io__raw_substream2; }
};
