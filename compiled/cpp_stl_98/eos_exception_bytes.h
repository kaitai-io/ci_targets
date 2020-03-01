#ifndef EOS_EXCEPTION_BYTES_H_
#define EOS_EXCEPTION_BYTES_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class eosExceptionBytes_t : public kaitai::kstruct {

public:
    class data_t;

    eosExceptionBytes_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, eosExceptionBytes_t* p__root = 0);

private:
    void _read();

public:
    ~eosExceptionBytes_t();

    class data_t : public kaitai::kstruct {

    public:

        data_t(kaitai::kstream* p__io, eosExceptionBytes_t* p__parent = 0, eosExceptionBytes_t* p__root = 0);

    private:
        void _read();

    public:
        ~data_t();

    private:
        std::string m_buf;
        eosExceptionBytes_t* m__root;
        eosExceptionBytes_t* m__parent;

    public:
        std::string buf() const { return m_buf; }
        eosExceptionBytes_t* _root() const { return m__root; }
        eosExceptionBytes_t* _parent() const { return m__parent; }
    };

private:
    data_t* m_envelope;
    eosExceptionBytes_t* m__root;
    kaitai::kstruct* m__parent;
    std::string m__raw_envelope;
    kaitai::kstream* m__io__raw_envelope;

public:
    data_t* envelope() const { return m_envelope; }
    eosExceptionBytes_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
    std::string _raw_envelope() const { return m__raw_envelope; }
    kaitai::kstream* _io__raw_envelope() const { return m__io__raw_envelope; }
};

#endif  // EOS_EXCEPTION_BYTES_H_
