#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

class expr_sizeof_type_1_t;

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class expr_sizeof_type_1_t : public kaitai::kstruct {

public:
    class block_t;

    expr_sizeof_type_1_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, expr_sizeof_type_1_t* p__root = nullptr);

private:
    void _read();
    void _clean_up();

public:
    ~expr_sizeof_type_1_t();

    class block_t : public kaitai::kstruct {

    public:
        class subblock_t;

        block_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, expr_sizeof_type_1_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~block_t();

        class subblock_t : public kaitai::kstruct {

        public:

            subblock_t(kaitai::kstream* p__io, expr_sizeof_type_1_t::block_t* p__parent = nullptr, expr_sizeof_type_1_t* p__root = nullptr);

        private:
            void _read();
            void _clean_up();

        public:
            ~subblock_t();
            std::string a() const { return m_a; }
            expr_sizeof_type_1_t* _root() const { return m__root; }
            expr_sizeof_type_1_t::block_t* _parent() const { return m__parent; }

        private:
            std::string m_a;
            expr_sizeof_type_1_t* m__root;
            expr_sizeof_type_1_t::block_t* m__parent;
        };

    public:
        uint8_t a() const { return m_a; }
        uint32_t b() const { return m_b; }
        std::string c() const { return m_c; }
        subblock_t* d() const { return m_d.get(); }
        expr_sizeof_type_1_t* _root() const { return m__root; }
        kaitai::kstruct* _parent() const { return m__parent; }

    private:
        uint8_t m_a;
        uint32_t m_b;
        std::string m_c;
        std::unique_ptr<subblock_t> m_d;
        expr_sizeof_type_1_t* m__root;
        kaitai::kstruct* m__parent;
    };

public:
    int32_t sizeof_block();
    int32_t sizeof_subblock();
    expr_sizeof_type_1_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }

private:
    bool f_sizeof_block;
    int32_t m_sizeof_block;
    bool f_sizeof_subblock;
    int32_t m_sizeof_subblock;
    expr_sizeof_type_1_t* m__root;
    kaitai::kstruct* m__parent;
};
