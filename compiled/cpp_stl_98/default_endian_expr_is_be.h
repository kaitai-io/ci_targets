#ifndef DEFAULT_ENDIAN_EXPR_IS_BE_H_
#define DEFAULT_ENDIAN_EXPR_IS_BE_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <vector>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class defaultEndianExprIsBe_t : public kaitai::kstruct {

public:
    class doc_t;

    defaultEndianExprIsBe_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, defaultEndianExprIsBe_t* p__root = 0);

private:
    void _read();

public:
    ~defaultEndianExprIsBe_t();

    class doc_t : public kaitai::kstruct {

    public:
        class mainObj_t;

        doc_t(kaitai::kstream* p__io, defaultEndianExprIsBe_t* p__parent = 0, defaultEndianExprIsBe_t* p__root = 0);

    private:
        void _read();

    public:
        ~doc_t();

        class mainObj_t : public kaitai::kstruct {

        public:
            class subMainObj_t;

            mainObj_t(kaitai::kstream* p__io, defaultEndianExprIsBe_t::doc_t* p__parent = 0, defaultEndianExprIsBe_t* p__root = 0);

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
            ~mainObj_t();

            class subMainObj_t : public kaitai::kstruct {

            public:

                subMainObj_t(kaitai::kstream* p__io, defaultEndianExprIsBe_t::doc_t::mainObj_t* p__parent = 0, defaultEndianExprIsBe_t* p__root = 0, int p_is_le = -1);

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
                ~subMainObj_t();

            private:
                uint32_t m_foo;
                defaultEndianExprIsBe_t* m__root;
                defaultEndianExprIsBe_t::doc_t::mainObj_t* m__parent;

            public:
                uint32_t foo() const { return m_foo; }
                defaultEndianExprIsBe_t* _root() const { return m__root; }
                defaultEndianExprIsBe_t::doc_t::mainObj_t* _parent() const { return m__parent; }
            };

        private:
            bool f_inst_int;
            uint32_t m_inst_int;

        public:
            uint32_t inst_int();

        private:
            bool f_inst_sub;
            subMainObj_t* m_inst_sub;

        public:
            subMainObj_t* inst_sub();

        private:
            uint32_t m_some_int;
            uint16_t m_some_int_be;
            uint16_t m_some_int_le;
            defaultEndianExprIsBe_t* m__root;
            defaultEndianExprIsBe_t::doc_t* m__parent;

        public:
            uint32_t some_int() const { return m_some_int; }
            uint16_t some_int_be() const { return m_some_int_be; }
            uint16_t some_int_le() const { return m_some_int_le; }
            defaultEndianExprIsBe_t* _root() const { return m__root; }
            defaultEndianExprIsBe_t::doc_t* _parent() const { return m__parent; }
        };

    private:
        std::string m_indicator;
        mainObj_t* m_main;
        defaultEndianExprIsBe_t* m__root;
        defaultEndianExprIsBe_t* m__parent;

    public:
        std::string indicator() const { return m_indicator; }
        mainObj_t* main() const { return m_main; }
        defaultEndianExprIsBe_t* _root() const { return m__root; }
        defaultEndianExprIsBe_t* _parent() const { return m__parent; }
    };

private:
    std::vector<doc_t*>* m_docs;
    defaultEndianExprIsBe_t* m__root;
    kaitai::kstruct* m__parent;

public:
    std::vector<doc_t*>* docs() const { return m_docs; }
    defaultEndianExprIsBe_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};

#endif  // DEFAULT_ENDIAN_EXPR_IS_BE_H_
