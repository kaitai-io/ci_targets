#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class expr_sizeof_type_1_t : public kaitai::kstruct {

public:
    class block_t;

    expr_sizeof_type_1_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, expr_sizeof_type_1_t* p__root = nullptr);

private:
    void _read();

public:

private:
    void _clean_up();

public:
    ~expr_sizeof_type_1_t();

    class block_t : public kaitai::kstruct {

    public:
        class subblock_t;

        block_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, expr_sizeof_type_1_t* p__root = nullptr);

    private:
        void _read();

    public:

    private:
        void _clean_up();

    public:
        ~block_t();

        class subblock_t : public kaitai::kstruct {

        public:

            subblock_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, expr_sizeof_type_1_t* p__root = nullptr);

        private:
            void _read();

        public:

        private:
            void _clean_up();

        public:
            ~subblock_t();

        private:
            std::string m_a;
            expr_sizeof_type_1_t* m__root;
            kaitai::kstruct* m__parent;

        public:
            std::string a() const { return m_a; }
            expr_sizeof_type_1_t* _root() const { return m__root; }
            kaitai::kstruct* _parent() const { return m__parent; }
        };

    private:
        uint8_t m_a;
        uint32_t m_b;
        std::string m_c;
        std::unique_ptr<subblock_t> m_d;
        expr_sizeof_type_1_t* m__root;
        kaitai::kstruct* m__parent;

    public:
        uint8_t a() const { return m_a; }
        uint32_t b() const { return m_b; }
        std::string c() const { return m_c; }
        subblock_t* d() const { return m_d.get(); }
        expr_sizeof_type_1_t* _root() const { return m__root; }
        kaitai::kstruct* _parent() const { return m__parent; }
    };

private:
    bool f_sizeof_block;
    int32_t m_sizeof_block;

public:
    int32_t sizeof_block();

private:
    bool f_sizeof_subblock;
    int32_t m_sizeof_subblock;

public:
    int32_t sizeof_subblock();

private:
    expr_sizeof_type_1_t* m__root;
    kaitai::kstruct* m__parent;

public:
    expr_sizeof_type_1_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};
