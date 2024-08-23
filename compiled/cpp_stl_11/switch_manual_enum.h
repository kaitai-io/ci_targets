#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

class switch_manual_enum_t;

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>
#include <vector>
#include <set>
#include <type_traits>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class switch_manual_enum_t : public kaitai::kstruct {

public:
    class opcode_t;

    switch_manual_enum_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, switch_manual_enum_t* p__root = nullptr);

private:
    void _read();
    void _clean_up();

public:
    ~switch_manual_enum_t();

    class opcode_t : public kaitai::kstruct {

    public:
        class intval_t;
        class strval_t;

        enum code_enum_t {
            CODE_ENUM_INTVAL = 73,
            CODE_ENUM_STRVAL = 83
        };
        static const std::set<std::underlying_type<code_enum_t>::type> _values_code_enum_t;

        opcode_t(kaitai::kstream* p__io, switch_manual_enum_t* p__parent = nullptr, switch_manual_enum_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~opcode_t();

        class intval_t : public kaitai::kstruct {

        public:

            intval_t(kaitai::kstream* p__io, switch_manual_enum_t::opcode_t* p__parent = nullptr, switch_manual_enum_t* p__root = nullptr);

        private:
            void _read();
            void _clean_up();

        public:
            ~intval_t();

        private:
            uint8_t m_value;
            switch_manual_enum_t* m__root;
            switch_manual_enum_t::opcode_t* m__parent;

        public:
            uint8_t value() const { return m_value; }
            switch_manual_enum_t* _root() const { return m__root; }
            switch_manual_enum_t::opcode_t* _parent() const { return m__parent; }
        };

        class strval_t : public kaitai::kstruct {

        public:

            strval_t(kaitai::kstream* p__io, switch_manual_enum_t::opcode_t* p__parent = nullptr, switch_manual_enum_t* p__root = nullptr);

        private:
            void _read();
            void _clean_up();

        public:
            ~strval_t();

        private:
            std::string m_value;
            switch_manual_enum_t* m__root;
            switch_manual_enum_t::opcode_t* m__parent;

        public:
            std::string value() const { return m_value; }
            switch_manual_enum_t* _root() const { return m__root; }
            switch_manual_enum_t::opcode_t* _parent() const { return m__parent; }
        };

    private:
        code_enum_t m_code;
        std::unique_ptr<kaitai::kstruct> m_body;
        bool n_body;

    public:
        bool _is_null_body() { body(); return n_body; };

    private:
        switch_manual_enum_t* m__root;
        switch_manual_enum_t* m__parent;

    public:
        code_enum_t code() const { return m_code; }
        kaitai::kstruct* body() const { return m_body.get(); }
        switch_manual_enum_t* _root() const { return m__root; }
        switch_manual_enum_t* _parent() const { return m__parent; }
    };

private:
    std::unique_ptr<std::vector<std::unique_ptr<opcode_t>>> m_opcodes;
    switch_manual_enum_t* m__root;
    kaitai::kstruct* m__parent;

public:
    std::vector<std::unique_ptr<opcode_t>>* opcodes() const { return m_opcodes.get(); }
    switch_manual_enum_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};
