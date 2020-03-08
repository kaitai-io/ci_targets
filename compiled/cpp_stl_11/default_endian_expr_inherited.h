#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>
#include <vector>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class default_endian_expr_inherited_t : public kaitai::kstruct {

public:
    class doc_t;

    default_endian_expr_inherited_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, default_endian_expr_inherited_t* p__root = nullptr);

private:
    void _read();

public:
    ~default_endian_expr_inherited_t();

    class doc_t : public kaitai::kstruct {

    public:
        class main_obj_t;

        doc_t(kaitai::kstream* p__io, default_endian_expr_inherited_t* p__parent = nullptr, default_endian_expr_inherited_t* p__root = nullptr);

    private:
        void _read();

    public:
        ~doc_t();

        class main_obj_t : public kaitai::kstruct {

        public:
            class sub_obj_t;

            main_obj_t(kaitai::kstream* p__io, default_endian_expr_inherited_t::doc_t* p__parent = nullptr, default_endian_expr_inherited_t* p__root = nullptr);

        private:
            int m__is_le;

        public:

        private:
            void _read();

        public:

        private:
            void _read_le();

        public:

        private:
            void _read_be();

        public:
            ~main_obj_t();

            class sub_obj_t : public kaitai::kstruct {

            public:
                class subsub_obj_t;

                sub_obj_t(kaitai::kstream* p__io, default_endian_expr_inherited_t::doc_t::main_obj_t* p__parent = nullptr, default_endian_expr_inherited_t* p__root = nullptr, int p_is_le = -1);

            private:
                int m__is_le;

            public:

            private:
                void _read();

            public:

            private:
                void _read_le();

            public:

            private:
                void _read_be();

            public:
                ~sub_obj_t();

                class subsub_obj_t : public kaitai::kstruct {

                public:

                    subsub_obj_t(kaitai::kstream* p__io, default_endian_expr_inherited_t::doc_t::main_obj_t::sub_obj_t* p__parent = nullptr, default_endian_expr_inherited_t* p__root = nullptr, int p_is_le = -1);

                private:
                    int m__is_le;

                public:

                private:
                    void _read();

                public:

                private:
                    void _read_le();

                public:

                private:
                    void _read_be();

                public:
                    ~subsub_obj_t();

                private:
                    bool f_some_inst;
                    uint32_t m_some_inst;

                public:
                    uint32_t some_inst();

                private:
                    uint16_t m_some_int1;
                    uint16_t m_some_int2;
                    default_endian_expr_inherited_t* m__root;
                    default_endian_expr_inherited_t::doc_t::main_obj_t::sub_obj_t* m__parent;

                public:
                    uint16_t some_int1() const { return m_some_int1; }
                    uint16_t some_int2() const { return m_some_int2; }
                    default_endian_expr_inherited_t* _root() const { return m__root; }
                    default_endian_expr_inherited_t::doc_t::main_obj_t::sub_obj_t* _parent() const { return m__parent; }
                };

            private:
                uint32_t m_some_int;
                std::unique_ptr<subsub_obj_t> m_more;
                default_endian_expr_inherited_t* m__root;
                default_endian_expr_inherited_t::doc_t::main_obj_t* m__parent;

            public:
                uint32_t some_int() const { return m_some_int; }
                subsub_obj_t* more() const { return m_more.get(); }
                default_endian_expr_inherited_t* _root() const { return m__root; }
                default_endian_expr_inherited_t::doc_t::main_obj_t* _parent() const { return m__parent; }
            };

        private:
            std::unique_ptr<sub_obj_t> m_insides;
            default_endian_expr_inherited_t* m__root;
            default_endian_expr_inherited_t::doc_t* m__parent;

        public:
            sub_obj_t* insides() const { return m_insides.get(); }
            default_endian_expr_inherited_t* _root() const { return m__root; }
            default_endian_expr_inherited_t::doc_t* _parent() const { return m__parent; }
        };

    private:
        std::string m_indicator;
        std::unique_ptr<main_obj_t> m_main;
        default_endian_expr_inherited_t* m__root;
        default_endian_expr_inherited_t* m__parent;

    public:
        std::string indicator() const { return m_indicator; }
        main_obj_t* main() const { return m_main.get(); }
        default_endian_expr_inherited_t* _root() const { return m__root; }
        default_endian_expr_inherited_t* _parent() const { return m__parent; }
    };

private:
    std::unique_ptr<std::vector<std::unique_ptr<doc_t>>> m_docs;
    default_endian_expr_inherited_t* m__root;
    kaitai::kstruct* m__parent;

public:
    std::unique_ptr<std::vector<std::unique_ptr<doc_t>>> docs() const { return m_docs.get(); }
    default_endian_expr_inherited_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};
