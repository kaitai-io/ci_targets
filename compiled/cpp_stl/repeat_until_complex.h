#ifndef REPEAT_UNTIL_COMPLEX_H_
#define REPEAT_UNTIL_COMPLEX_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <kaitai/kaitaistruct.h>
#include <kaitai/kaitaistream.h>

#include <stdint.h>
#include <vector>

#if KAITAI_STRUCT_VERSION < 7000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.7 or later is required"
#endif

class repeat_until_complex_t : public kaitai::kstruct {

public:
    class type_u1_t;
    class type_u2_t;

    repeat_until_complex_t(kaitai::kstream* p_io, kaitai::kstruct* p_parent = 0, repeat_until_complex_t* p_root = 0);
    ~repeat_until_complex_t();

    class type_u1_t : public kaitai::kstruct {

    public:

        type_u1_t(kaitai::kstream* p_io, repeat_until_complex_t* p_parent = 0, repeat_until_complex_t* p_root = 0);
        ~type_u1_t();

    private:
        uint8_t m_count;
        std::vector<uint8_t>* m_values;
        repeat_until_complex_t* m__root;
        repeat_until_complex_t* m__parent;

    public:
        uint8_t count() const { return m_count; }
        std::vector<uint8_t>* values() const { return m_values; }
        repeat_until_complex_t* _root() const { return m__root; }
        repeat_until_complex_t* _parent() const { return m__parent; }
    };

    class type_u2_t : public kaitai::kstruct {

    public:

        type_u2_t(kaitai::kstream* p_io, repeat_until_complex_t* p_parent = 0, repeat_until_complex_t* p_root = 0);
        ~type_u2_t();

    private:
        uint16_t m_count;
        std::vector<uint16_t>* m_values;
        repeat_until_complex_t* m__root;
        repeat_until_complex_t* m__parent;

    public:
        uint16_t count() const { return m_count; }
        std::vector<uint16_t>* values() const { return m_values; }
        repeat_until_complex_t* _root() const { return m__root; }
        repeat_until_complex_t* _parent() const { return m__parent; }
    };

private:
    std::vector<type_u1_t*>* m_first;
    std::vector<type_u2_t*>* m_second;
    std::vector<uint8_t>* m_third;
    repeat_until_complex_t* m__root;
    kaitai::kstruct* m__parent;

public:
    std::vector<type_u1_t*>* first() const { return m_first; }
    std::vector<type_u2_t*>* second() const { return m_second; }
    std::vector<uint8_t>* third() const { return m_third; }
    repeat_until_complex_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};

#endif  // REPEAT_UNTIL_COMPLEX_H_
