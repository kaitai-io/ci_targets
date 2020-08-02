#ifndef EOS_EXCEPTION_U4_H_
#define EOS_EXCEPTION_U4_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class eos_exception_u4_t : public kaitai::kstruct {

public:
    class data_t;

    eos_exception_u4_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, eos_exception_u4_t* p__root = 0);

private:
    void _read();

public:
    ~eos_exception_u4_t();
    void _cleanUp();

    class data_t : public kaitai::kstruct {

    public:

        data_t(kaitai::kstream* p__io, eos_exception_u4_t* p__parent = 0, eos_exception_u4_t* p__root = 0);

    private:
        void _read();

    public:
        ~data_t();
        void _cleanUp();

    private:
        std::string m_prebuf;
        uint32_t m_fail_int;
        eos_exception_u4_t* m__root;
        eos_exception_u4_t* m__parent;

    public:
        std::string prebuf() const { return m_prebuf; }
        uint32_t fail_int() const { return m_fail_int; }
        eos_exception_u4_t* _root() const { return m__root; }
        eos_exception_u4_t* _parent() const { return m__parent; }
    };

private:
    data_t* m_envelope;
    eos_exception_u4_t* m__root;
    kaitai::kstruct* m__parent;
    std::string m__raw_envelope;
    kaitai::kstream* m__io__raw_envelope;

public:
    data_t* envelope() const { return m_envelope; }
    eos_exception_u4_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
    std::string _raw_envelope() const { return m__raw_envelope; }
    kaitai::kstream* _io__raw_envelope() const { return m__io__raw_envelope; }
};

#endif  // EOS_EXCEPTION_U4_H_
