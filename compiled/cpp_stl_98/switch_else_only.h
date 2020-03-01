#ifndef SWITCH_ELSE_ONLY_H_
#define SWITCH_ELSE_ONLY_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class switchElseOnly_t : public kaitai::kstruct {

public:
    class data_t;

    switchElseOnly_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, switchElseOnly_t* p__root = 0);

private:
    void _read();

public:
    ~switchElseOnly_t();

    class data_t : public kaitai::kstruct {

    public:

        data_t(kaitai::kstream* p__io, switchElseOnly_t* p__parent = 0, switchElseOnly_t* p__root = 0);

    private:
        void _read();

    public:
        ~data_t();

    private:
        std::string m_value;
        switchElseOnly_t* m__root;
        switchElseOnly_t* m__parent;

    public:
        std::string value() const { return m_value; }
        switchElseOnly_t* _root() const { return m__root; }
        switchElseOnly_t* _parent() const { return m__parent; }
    };

private:
    int8_t m_opcode;
    int8_t m_prim_byte;
    data_t* m_struct;
    data_t* m_struct_sized;
    switchElseOnly_t* m__root;
    kaitai::kstruct* m__parent;
    std::string m__raw_struct_sized;
    kaitai::kstream* m__io__raw_struct_sized;

public:
    int8_t opcode() const { return m_opcode; }
    int8_t prim_byte() const { return m_prim_byte; }
    data_t* struct() const { return m_struct; }
    data_t* struct_sized() const { return m_struct_sized; }
    switchElseOnly_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
    std::string _raw_struct_sized() const { return m__raw_struct_sized; }
    kaitai::kstream* _io__raw_struct_sized() const { return m__io__raw_struct_sized; }
};

#endif  // SWITCH_ELSE_ONLY_H_
