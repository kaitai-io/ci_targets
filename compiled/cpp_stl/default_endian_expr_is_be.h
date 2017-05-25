#ifndef DEFAULT_ENDIAN_EXPR_IS_BE_H_
#define DEFAULT_ENDIAN_EXPR_IS_BE_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <kaitai/kaitaistruct.h>
#include <kaitai/kaitaistream.h>

#include <stdint.h>
#include <vector>

#if KAITAI_STRUCT_VERSION < 7000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.7 or later is required"
#endif

class default_endian_expr_is_be_t : public kaitai::kstruct {

public:
    class doc_t;

    default_endian_expr_is_be_t(kaitai::kstream* p_io, kaitai::kstruct* p_parent = 0, default_endian_expr_is_be_t* p_root = 0);
    void _read();
    ~default_endian_expr_is_be_t();

    class doc_t : public kaitai::kstruct {

    public:
        class main_obj_t;

        doc_t(kaitai::kstream* p_io, default_endian_expr_is_be_t* p_parent = 0, default_endian_expr_is_be_t* p_root = 0);
        void _read();
        ~doc_t();

        class main_obj_t : public kaitai::kstruct {

        public:
            class sub_main_obj_t;

            main_obj_t(kaitai::kstream* p_io, default_endian_expr_is_be_t::doc_t* p_parent = 0, default_endian_expr_is_be_t* p_root = 0);

        private:
            int m__is_le;

        public:
            void _read_le();
            void _read_be();
            ~main_obj_t();

            class sub_main_obj_t : public kaitai::kstruct {

            public:

                sub_main_obj_t(kaitai::kstream* p_io, default_endian_expr_is_be_t::doc_t::main_obj_t* p_parent = 0, default_endian_expr_is_be_t* p_root = 0, int p_is_le = -1);

            private:
                int m__is_le;

            public:
                void _read_le();
                void _read_be();
                ~sub_main_obj_t();

            private:
                uint32_t m_foo;
                default_endian_expr_is_be_t* m__root;
                default_endian_expr_is_be_t::doc_t::main_obj_t* m__parent;

            public:
                uint32_t foo() const { return m_foo; }
                default_endian_expr_is_be_t* _root() const { return m__root; }
                default_endian_expr_is_be_t::doc_t::main_obj_t* _parent() const { return m__parent; }
            };

        private:
            bool f_inst_int;
            uint32_t m_inst_int;

        public:
            uint32_t inst_int();

        private:
            bool f_inst_sub;
            sub_main_obj_t* m_inst_sub;

        public:
            sub_main_obj_t* inst_sub();

        private:
            uint32_t m_some_int;
            uint16_t m_some_int_be;
            uint16_t m_some_int_le;
            default_endian_expr_is_be_t* m__root;
            default_endian_expr_is_be_t::doc_t* m__parent;

        public:
            uint32_t some_int() const { return m_some_int; }
            uint16_t some_int_be() const { return m_some_int_be; }
            uint16_t some_int_le() const { return m_some_int_le; }
            default_endian_expr_is_be_t* _root() const { return m__root; }
            default_endian_expr_is_be_t::doc_t* _parent() const { return m__parent; }
        };

    private:
        std::string m_indicator;
        main_obj_t* m_main;
        default_endian_expr_is_be_t* m__root;
        default_endian_expr_is_be_t* m__parent;

    public:
        std::string indicator() const { return m_indicator; }
        main_obj_t* main() const { return m_main; }
        default_endian_expr_is_be_t* _root() const { return m__root; }
        default_endian_expr_is_be_t* _parent() const { return m__parent; }
    };

private:
    std::vector<doc_t*>* m_docs;
    default_endian_expr_is_be_t* m__root;
    kaitai::kstruct* m__parent;

public:
    std::vector<doc_t*>* docs() const { return m_docs; }
    default_endian_expr_is_be_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};

#endif  // DEFAULT_ENDIAN_EXPR_IS_BE_H_
