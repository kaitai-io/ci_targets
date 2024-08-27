#ifndef SWITCH_MANUAL_ENUM_INVALID_ELSE_H_
#define SWITCH_MANUAL_ENUM_INVALID_ELSE_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

class switch_manual_enum_invalid_else_t;

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <vector>
#include <set>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class switch_manual_enum_invalid_else_t : public kaitai::kstruct {

public:
    class opcode_t;

    switch_manual_enum_invalid_else_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, switch_manual_enum_invalid_else_t* p__root = 0);

private:
    void _read();
    void _clean_up();

public:
    ~switch_manual_enum_invalid_else_t();

    class opcode_t : public kaitai::kstruct {

    public:
        class defval_t;
        class intval_t;
        class strval_t;

        enum code_enum_t {
            CODE_ENUM_INTVAL = 73,
            CODE_ENUM_STRVAL = 83
        };
        static bool _is_defined_code_enum_t(code_enum_t v);

    private:
        static const std::set<code_enum_t> _values_code_enum_t;
        static std::set<code_enum_t> _build_values_code_enum_t();

    public:

        opcode_t(kaitai::kstream* p__io, switch_manual_enum_invalid_else_t* p__parent = 0, switch_manual_enum_invalid_else_t* p__root = 0);

    private:
        void _read();
        void _clean_up();

    public:
        ~opcode_t();

        class defval_t : public kaitai::kstruct {

        public:

            defval_t(kaitai::kstream* p__io, switch_manual_enum_invalid_else_t::opcode_t* p__parent = 0, switch_manual_enum_invalid_else_t* p__root = 0);

        private:
            void _read();
            void _clean_up();

        public:
            ~defval_t();

        private:
            bool f_value;
            int8_t m_value;

        public:
            int8_t value();

        private:
            switch_manual_enum_invalid_else_t* m__root;
            switch_manual_enum_invalid_else_t::opcode_t* m__parent;

        public:
            switch_manual_enum_invalid_else_t* _root() const { return m__root; }
            switch_manual_enum_invalid_else_t::opcode_t* _parent() const { return m__parent; }
        };

        class intval_t : public kaitai::kstruct {

        public:

            intval_t(kaitai::kstream* p__io, switch_manual_enum_invalid_else_t::opcode_t* p__parent = 0, switch_manual_enum_invalid_else_t* p__root = 0);

        private:
            void _read();
            void _clean_up();

        public:
            ~intval_t();

        private:
            uint8_t m_value;
            switch_manual_enum_invalid_else_t* m__root;
            switch_manual_enum_invalid_else_t::opcode_t* m__parent;

        public:
            uint8_t value() const { return m_value; }
            switch_manual_enum_invalid_else_t* _root() const { return m__root; }
            switch_manual_enum_invalid_else_t::opcode_t* _parent() const { return m__parent; }
        };

        class strval_t : public kaitai::kstruct {

        public:

            strval_t(kaitai::kstream* p__io, switch_manual_enum_invalid_else_t::opcode_t* p__parent = 0, switch_manual_enum_invalid_else_t* p__root = 0);

        private:
            void _read();
            void _clean_up();

        public:
            ~strval_t();

        private:
            std::string m_value;
            switch_manual_enum_invalid_else_t* m__root;
            switch_manual_enum_invalid_else_t::opcode_t* m__parent;

        public:
            std::string value() const { return m_value; }
            switch_manual_enum_invalid_else_t* _root() const { return m__root; }
            switch_manual_enum_invalid_else_t::opcode_t* _parent() const { return m__parent; }
        };

    private:
        code_enum_t m_code;
        kaitai::kstruct* m_body;
        switch_manual_enum_invalid_else_t* m__root;
        switch_manual_enum_invalid_else_t* m__parent;

    public:
        code_enum_t code() const { return m_code; }
        kaitai::kstruct* body() const { return m_body; }
        switch_manual_enum_invalid_else_t* _root() const { return m__root; }
        switch_manual_enum_invalid_else_t* _parent() const { return m__parent; }
    };

private:
    std::vector<opcode_t*>* m_opcodes;
    switch_manual_enum_invalid_else_t* m__root;
    kaitai::kstruct* m__parent;

public:
    std::vector<opcode_t*>* opcodes() const { return m_opcodes; }
    switch_manual_enum_invalid_else_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};

#endif  // SWITCH_MANUAL_ENUM_INVALID_ELSE_H_
