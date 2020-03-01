#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>
#include <vector>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class switchManualEnumInvalidElse_t : public kaitai::kstruct {

public:
    class opcode_t;

    switchManualEnumInvalidElse_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, switchManualEnumInvalidElse_t* p__root = nullptr);

private:
    void _read();

public:
    ~switchManualEnumInvalidElse_t();

    class opcode_t : public kaitai::kstruct {

    public:
        class intval_t;
        class strval_t;
        class defval_t;

        enum codeEnum_t {
            CODE_ENUM_INTVAL = 73,
            CODE_ENUM_STRVAL = 83
        };

        opcode_t(kaitai::kstream* p__io, switchManualEnumInvalidElse_t* p__parent = nullptr, switchManualEnumInvalidElse_t* p__root = nullptr);

    private:
        void _read();

    public:
        ~opcode_t();

        class intval_t : public kaitai::kstruct {

        public:

            intval_t(kaitai::kstream* p__io, switchManualEnumInvalidElse_t::opcode_t* p__parent = nullptr, switchManualEnumInvalidElse_t* p__root = nullptr);

        private:
            void _read();

        public:
            ~intval_t();

        private:
            uint8_t m_value;
            switchManualEnumInvalidElse_t* m__root;
            switchManualEnumInvalidElse_t::opcode_t* m__parent;

        public:
            uint8_t value() const { return m_value; }
            switchManualEnumInvalidElse_t* _root() const { return m__root; }
            switchManualEnumInvalidElse_t::opcode_t* _parent() const { return m__parent; }
        };

        class strval_t : public kaitai::kstruct {

        public:

            strval_t(kaitai::kstream* p__io, switchManualEnumInvalidElse_t::opcode_t* p__parent = nullptr, switchManualEnumInvalidElse_t* p__root = nullptr);

        private:
            void _read();

        public:
            ~strval_t();

        private:
            std::string m_value;
            switchManualEnumInvalidElse_t* m__root;
            switchManualEnumInvalidElse_t::opcode_t* m__parent;

        public:
            std::string value() const { return m_value; }
            switchManualEnumInvalidElse_t* _root() const { return m__root; }
            switchManualEnumInvalidElse_t::opcode_t* _parent() const { return m__parent; }
        };

        class defval_t : public kaitai::kstruct {

        public:

            defval_t(kaitai::kstream* p__io, switchManualEnumInvalidElse_t::opcode_t* p__parent = nullptr, switchManualEnumInvalidElse_t* p__root = nullptr);

        private:
            void _read();

        public:
            ~defval_t();

        private:
            bool f_value;
            int8_t m_value;

        public:
            int8_t value();

        private:
            switchManualEnumInvalidElse_t* m__root;
            switchManualEnumInvalidElse_t::opcode_t* m__parent;

        public:
            switchManualEnumInvalidElse_t* _root() const { return m__root; }
            switchManualEnumInvalidElse_t::opcode_t* _parent() const { return m__parent; }
        };

    private:
        codeEnum_t m_code;
        kaitai::kstruct* m_body;
        switchManualEnumInvalidElse_t* m__root;
        switchManualEnumInvalidElse_t* m__parent;

    public:
        codeEnum_t code() const { return m_code; }
        kaitai::kstruct* body() const { return m_body; }
        switchManualEnumInvalidElse_t* _root() const { return m__root; }
        switchManualEnumInvalidElse_t* _parent() const { return m__parent; }
    };

private:
    std::unique_ptr<std::vector<std::unique_ptr<opcode_t>>> m_opcodes;
    switchManualEnumInvalidElse_t* m__root;
    kaitai::kstruct* m__parent;

public:
    std::vector<std::unique_ptr<opcode_t>>* opcodes() const { return m_opcodes.get(); }
    switchManualEnumInvalidElse_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};
