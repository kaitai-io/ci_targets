#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>
#include <vector>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class cast_nested_t : public kaitai::kstruct {

public:
    class opcode_t;

    cast_nested_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, cast_nested_t* p__root = nullptr);

private:
    void _read();

public:

private:
    void _clean_up();

public:
    ~cast_nested_t();

    class opcode_t : public kaitai::kstruct {

    public:
        class intval_t;
        class strval_t;

        opcode_t(kaitai::kstream* p__io, cast_nested_t* p__parent = nullptr, cast_nested_t* p__root = nullptr);

    private:
        void _read();

    public:

    private:
        void _clean_up();

    public:
        ~opcode_t();

        class intval_t : public kaitai::kstruct {

        public:

            intval_t(kaitai::kstream* p__io, cast_nested_t::opcode_t* p__parent = nullptr, cast_nested_t* p__root = nullptr);

        private:
            void _read();

        public:

        private:
            void _clean_up();

        public:
            ~intval_t();

        private:
            uint8_t m_value;
            cast_nested_t* m__root;
            cast_nested_t::opcode_t* m__parent;

        public:
            uint8_t value() const { return m_value; }
            cast_nested_t* _root() const { return m__root; }
            cast_nested_t::opcode_t* _parent() const { return m__parent; }
        };

        class strval_t : public kaitai::kstruct {

        public:

            strval_t(kaitai::kstream* p__io, cast_nested_t::opcode_t* p__parent = nullptr, cast_nested_t* p__root = nullptr);

        private:
            void _read();

        public:

        private:
            void _clean_up();

        public:
            ~strval_t();

        private:
            std::string m_value;
            cast_nested_t* m__root;
            cast_nested_t::opcode_t* m__parent;

        public:
            std::string value() const { return m_value; }
            cast_nested_t* _root() const { return m__root; }
            cast_nested_t::opcode_t* _parent() const { return m__parent; }
        };

    private:
        uint8_t m_code;
        std::unique_ptr<kaitai::kstruct> m_body;
        bool n_body;

    public:
        bool _is_null_body() { body(); return n_body; };

    private:
        cast_nested_t* m__root;
        cast_nested_t* m__parent;

    public:
        uint8_t code() const { return m_code; }
        kaitai::kstruct* body() const { return m_body.get(); }
        cast_nested_t* _root() const { return m__root; }
        cast_nested_t* _parent() const { return m__parent; }
    };

private:
    bool f_opcodes_0_str;
    cast_nested_t::opcode_t::strval_t* m_opcodes_0_str;

public:
    cast_nested_t::opcode_t::strval_t* opcodes_0_str();

private:
    bool f_opcodes_0_str_value;
    std::string m_opcodes_0_str_value;

public:
    std::string opcodes_0_str_value();

private:
    bool f_opcodes_1_int;
    cast_nested_t::opcode_t::intval_t* m_opcodes_1_int;

public:
    cast_nested_t::opcode_t::intval_t* opcodes_1_int();

private:
    bool f_opcodes_1_int_value;
    uint8_t m_opcodes_1_int_value;

public:
    uint8_t opcodes_1_int_value();

private:
    std::unique_ptr<std::vector<std::unique_ptr<opcode_t>>> m_opcodes;
    cast_nested_t* m__root;
    kaitai::kstruct* m__parent;

public:
    std::vector<std::unique_ptr<opcode_t>>* opcodes() const { return m_opcodes.get(); }
    cast_nested_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};
