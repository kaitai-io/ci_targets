#ifndef SWITCH_DEFAULT_ONLY_H_
#define SWITCH_DEFAULT_ONLY_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class switch_default_only_t : public kaitai::kstruct {

public:
    class data_t;

    switch_default_only_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, switch_default_only_t* p__root = 0);

private:
    void _read();

public:
    ~switch_default_only_t();

    class data_t : public kaitai::kstruct {

    public:

        data_t(kaitai::kstream* p__io, switch_default_only_t* p__parent = 0, switch_default_only_t* p__root = 0);

    private:
        void _read();

    public:
        ~data_t();

    private:
        std::string m_value;
        switch_default_only_t* m__root;
        switch_default_only_t* m__parent;

    public:
        std::string value() const { return m_value; }
        switch_default_only_t* _root() const { return m__root; }
        switch_default_only_t* _parent() const { return m__parent; }
    };

private:
    int8_t m_opcode;
    int8_t m_byte;
    data_t* m_struct;
    data_t* m_struct_sized;
    switch_default_only_t* m__root;
    kaitai::kstruct* m__parent;
    std::string m__raw_struct_sized;
    kaitai::kstream* m__io__raw_struct_sized;

public:
    int8_t opcode() const { return m_opcode; }
    int8_t byte() const { return m_byte; }
    data_t* struct() const { return m_struct; }
    data_t* struct_sized() const { return m_struct_sized; }
    switch_default_only_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
    std::string _raw_struct_sized() const { return m__raw_struct_sized; }
    kaitai::kstream* _io__raw_struct_sized() const { return m__io__raw_struct_sized; }
};

#endif  // SWITCH_DEFAULT_ONLY_H_
