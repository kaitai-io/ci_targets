#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

class default_endian_expr_exception_t;

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>
#include <vector>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class default_endian_expr_exception_t : public kaitai::kstruct {

public:
    class doc_t;

    default_endian_expr_exception_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, default_endian_expr_exception_t* p__root = nullptr);

private:
    void _read();
    void _clean_up();

public:
    ~default_endian_expr_exception_t();

    class doc_t : public kaitai::kstruct {

    public:
        class main_obj_t;

        doc_t(kaitai::kstream* p__io, default_endian_expr_exception_t* p__parent = nullptr, default_endian_expr_exception_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~doc_t();

        class main_obj_t : public kaitai::kstruct {

        public:

            main_obj_t(kaitai::kstream* p__io, default_endian_expr_exception_t::doc_t* p__parent = nullptr, default_endian_expr_exception_t* p__root = nullptr);

        private:
            int m__is_le;

        public:

        private:
            void _read();
            void _read_le();
            void _read_be();
            void _clean_up();

        public:
            ~main_obj_t();

        private:
            uint32_t m_some_int;
            uint16_t m_some_int_be;
            uint16_t m_some_int_le;
            default_endian_expr_exception_t* m__root;
            default_endian_expr_exception_t::doc_t* m__parent;

        public:
            uint32_t some_int() const { return m_some_int; }
            uint16_t some_int_be() const { return m_some_int_be; }
            uint16_t some_int_le() const { return m_some_int_le; }
            default_endian_expr_exception_t* _root() const { return m__root; }
            default_endian_expr_exception_t::doc_t* _parent() const { return m__parent; }
        };

    private:
        std::string m_indicator;
        std::unique_ptr<main_obj_t> m_main;
        default_endian_expr_exception_t* m__root;
        default_endian_expr_exception_t* m__parent;

    public:
        std::string indicator() const { return m_indicator; }
        main_obj_t* main() const { return m_main.get(); }
        default_endian_expr_exception_t* _root() const { return m__root; }
        default_endian_expr_exception_t* _parent() const { return m__parent; }
    };

private:
    std::unique_ptr<std::vector<std::unique_ptr<doc_t>>> m_docs;
    default_endian_expr_exception_t* m__root;
    kaitai::kstruct* m__parent;

public:
    std::vector<std::unique_ptr<doc_t>>* docs() const { return m_docs.get(); }
    default_endian_expr_exception_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};
