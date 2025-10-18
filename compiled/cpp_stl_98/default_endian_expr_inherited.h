#ifndef DEFAULT_ENDIAN_EXPR_INHERITED_H_
#define DEFAULT_ENDIAN_EXPR_INHERITED_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

class default_endian_expr_inherited_t;

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <vector>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class default_endian_expr_inherited_t : public kaitai::kstruct {

public:
    class doc_t;

    default_endian_expr_inherited_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, default_endian_expr_inherited_t* p__root = 0);

private:
    void _read();
    void _clean_up();

public:
    ~default_endian_expr_inherited_t();

    class doc_t : public kaitai::kstruct {

    public:
        class main_obj_t;

        doc_t(kaitai::kstream* p__io, default_endian_expr_inherited_t* p__parent = 0, default_endian_expr_inherited_t* p__root = 0);

    private:
        void _read();
        void _clean_up();

    public:
        ~doc_t();

        class main_obj_t : public kaitai::kstruct {

        public:
            class sub_obj_t;

            main_obj_t(kaitai::kstream* p__io, default_endian_expr_inherited_t::doc_t* p__parent = 0, default_endian_expr_inherited_t* p__root = 0);

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

            class sub_obj_t : public kaitai::kstruct {

            public:
                class subsub_obj_t;

                sub_obj_t(kaitai::kstream* p__io, default_endian_expr_inherited_t::doc_t::main_obj_t* p__parent = 0, default_endian_expr_inherited_t* p__root = 0, int p_is_le = -1);

            private:
                int m__is_le;

            public:

            private:
                void _read();
                void _read_le();
                void _read_be();
                void _clean_up();

            public:
                ~sub_obj_t();

                class subsub_obj_t : public kaitai::kstruct {

                public:

                    subsub_obj_t(kaitai::kstream* p__io, default_endian_expr_inherited_t::doc_t::main_obj_t::sub_obj_t* p__parent = 0, default_endian_expr_inherited_t* p__root = 0, int p_is_le = -1);

                private:
                    int m__is_le;

                public:

                private:
                    void _read();
                    void _read_le();
                    void _read_be();
                    void _clean_up();

                public:
                    ~subsub_obj_t();
                    uint32_t some_inst();
                    uint16_t some_int1() const { return m_some_int1; }
                    uint16_t some_int2() const { return m_some_int2; }
                    default_endian_expr_inherited_t* _root() const { return m__root; }
                    default_endian_expr_inherited_t::doc_t::main_obj_t::sub_obj_t* _parent() const { return m__parent; }

                private:
                    bool f_some_inst;
                    uint32_t m_some_inst;
                    uint16_t m_some_int1;
                    uint16_t m_some_int2;
                    default_endian_expr_inherited_t* m__root;
                    default_endian_expr_inherited_t::doc_t::main_obj_t::sub_obj_t* m__parent;
                };

            public:
                uint32_t some_int() const { return m_some_int; }
                subsub_obj_t* more() const { return m_more; }
                default_endian_expr_inherited_t* _root() const { return m__root; }
                default_endian_expr_inherited_t::doc_t::main_obj_t* _parent() const { return m__parent; }

            private:
                uint32_t m_some_int;
                subsub_obj_t* m_more;
                default_endian_expr_inherited_t* m__root;
                default_endian_expr_inherited_t::doc_t::main_obj_t* m__parent;
            };

        public:
            sub_obj_t* insides() const { return m_insides; }
            default_endian_expr_inherited_t* _root() const { return m__root; }
            default_endian_expr_inherited_t::doc_t* _parent() const { return m__parent; }

        private:
            sub_obj_t* m_insides;
            default_endian_expr_inherited_t* m__root;
            default_endian_expr_inherited_t::doc_t* m__parent;
        };

    public:
        std::string indicator() const { return m_indicator; }
        main_obj_t* main() const { return m_main; }
        default_endian_expr_inherited_t* _root() const { return m__root; }
        default_endian_expr_inherited_t* _parent() const { return m__parent; }

    private:
        std::string m_indicator;
        main_obj_t* m_main;
        default_endian_expr_inherited_t* m__root;
        default_endian_expr_inherited_t* m__parent;
    };

public:
    std::vector<doc_t*>* docs() const { return m_docs; }
    default_endian_expr_inherited_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }

private:
    std::vector<doc_t*>* m_docs;
    default_endian_expr_inherited_t* m__root;
    kaitai::kstruct* m__parent;
};

#endif  // DEFAULT_ENDIAN_EXPR_INHERITED_H_
