#ifndef SWITCH_MANUAL_STR_ELSE_H_
#define SWITCH_MANUAL_STR_ELSE_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <vector>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class switchManualStrElse_t : public kaitai::kstruct {

public:
    class opcode_t;

    switchManualStrElse_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, switchManualStrElse_t* p__root = 0);

private:
    void _read();

public:
    ~switchManualStrElse_t();

    class opcode_t : public kaitai::kstruct {

    public:
        class intval_t;
        class strval_t;
        class noneval_t;

        opcode_t(kaitai::kstream* p__io, switchManualStrElse_t* p__parent = 0, switchManualStrElse_t* p__root = 0);

    private:
        void _read();

    public:
        ~opcode_t();

        class intval_t : public kaitai::kstruct {

        public:

            intval_t(kaitai::kstream* p__io, switchManualStrElse_t::opcode_t* p__parent = 0, switchManualStrElse_t* p__root = 0);

        private:
            void _read();

        public:
            ~intval_t();

        private:
            uint8_t m_value;
            switchManualStrElse_t* m__root;
            switchManualStrElse_t::opcode_t* m__parent;

        public:
            uint8_t value() const { return m_value; }
            switchManualStrElse_t* _root() const { return m__root; }
            switchManualStrElse_t::opcode_t* _parent() const { return m__parent; }
        };

        class strval_t : public kaitai::kstruct {

        public:

            strval_t(kaitai::kstream* p__io, switchManualStrElse_t::opcode_t* p__parent = 0, switchManualStrElse_t* p__root = 0);

        private:
            void _read();

        public:
            ~strval_t();

        private:
            std::string m_value;
            switchManualStrElse_t* m__root;
            switchManualStrElse_t::opcode_t* m__parent;

        public:
            std::string value() const { return m_value; }
            switchManualStrElse_t* _root() const { return m__root; }
            switchManualStrElse_t::opcode_t* _parent() const { return m__parent; }
        };

        class noneval_t : public kaitai::kstruct {

        public:

            noneval_t(kaitai::kstream* p__io, switchManualStrElse_t::opcode_t* p__parent = 0, switchManualStrElse_t* p__root = 0);

        private:
            void _read();

        public:
            ~noneval_t();

        private:
            uint32_t m_filler;
            switchManualStrElse_t* m__root;
            switchManualStrElse_t::opcode_t* m__parent;

        public:
            uint32_t filler() const { return m_filler; }
            switchManualStrElse_t* _root() const { return m__root; }
            switchManualStrElse_t::opcode_t* _parent() const { return m__parent; }
        };

    private:
        std::string m_code;
        kaitai::kstruct* m_body;
        switchManualStrElse_t* m__root;
        switchManualStrElse_t* m__parent;

    public:
        std::string code() const { return m_code; }
        kaitai::kstruct* body() const { return m_body; }
        switchManualStrElse_t* _root() const { return m__root; }
        switchManualStrElse_t* _parent() const { return m__parent; }
    };

private:
    std::vector<opcode_t*>* m_opcodes;
    switchManualStrElse_t* m__root;
    kaitai::kstruct* m__parent;

public:
    std::vector<opcode_t*>* opcodes() const { return m_opcodes; }
    switchManualStrElse_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};

#endif  // SWITCH_MANUAL_STR_ELSE_H_
