#ifndef REPEAT_UNTIL_COMPLEX_H_
#define REPEAT_UNTIL_COMPLEX_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <vector>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class repeatUntilComplex_t : public kaitai::kstruct {

public:
    class typeU1_t;
    class typeU2_t;

    repeatUntilComplex_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, repeatUntilComplex_t* p__root = 0);

private:
    void _read();

public:
    ~repeatUntilComplex_t();

    class typeU1_t : public kaitai::kstruct {

    public:

        typeU1_t(kaitai::kstream* p__io, repeatUntilComplex_t* p__parent = 0, repeatUntilComplex_t* p__root = 0);

    private:
        void _read();

    public:
        ~typeU1_t();

    private:
        uint8_t m_count;
        std::vector<uint8_t>* m_values;
        repeatUntilComplex_t* m__root;
        repeatUntilComplex_t* m__parent;

    public:
        uint8_t count() const { return m_count; }
        std::vector<uint8_t>* values() const { return m_values; }
        repeatUntilComplex_t* _root() const { return m__root; }
        repeatUntilComplex_t* _parent() const { return m__parent; }
    };

    class typeU2_t : public kaitai::kstruct {

    public:

        typeU2_t(kaitai::kstream* p__io, repeatUntilComplex_t* p__parent = 0, repeatUntilComplex_t* p__root = 0);

    private:
        void _read();

    public:
        ~typeU2_t();

    private:
        uint16_t m_count;
        std::vector<uint16_t>* m_values;
        repeatUntilComplex_t* m__root;
        repeatUntilComplex_t* m__parent;

    public:
        uint16_t count() const { return m_count; }
        std::vector<uint16_t>* values() const { return m_values; }
        repeatUntilComplex_t* _root() const { return m__root; }
        repeatUntilComplex_t* _parent() const { return m__parent; }
    };

private:
    std::vector<typeU1_t*>* m_first;
    std::vector<typeU2_t*>* m_second;
    std::vector<uint8_t>* m_third;
    repeatUntilComplex_t* m__root;
    kaitai::kstruct* m__parent;

public:
    std::vector<typeU1_t*>* first() const { return m_first; }
    std::vector<typeU2_t*>* second() const { return m_second; }
    std::vector<uint8_t>* third() const { return m_third; }
    repeatUntilComplex_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};

#endif  // REPEAT_UNTIL_COMPLEX_H_
