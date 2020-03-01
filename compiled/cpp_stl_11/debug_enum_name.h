#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>
#include <vector>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class debugEnumName_t : public kaitai::kstruct {

public:
    class testSubtype_t;

    enum testEnum1_t {
        TEST_ENUM1_ENUM_VALUE_80 = 80
    };

    enum testEnum2_t {
        TEST_ENUM2_ENUM_VALUE_65 = 65
    };

    debugEnumName_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, debugEnumName_t* p__root = nullptr);
    void _read();
    ~debugEnumName_t();

    class testSubtype_t : public kaitai::kstruct {

    public:

        enum innerEnum1_t {
            INNER_ENUM1_ENUM_VALUE_67 = 67
        };

        enum innerEnum2_t {
            INNER_ENUM2_ENUM_VALUE_11 = 11
        };

        testSubtype_t(kaitai::kstream* p__io, debugEnumName_t* p__parent = nullptr, debugEnumName_t* p__root = nullptr);
        void _read();
        ~testSubtype_t();

    private:
        bool f_instance_field;
        innerEnum2_t m_instance_field;

    public:
        innerEnum2_t instance_field();

    private:
        innerEnum1_t m_field1;
        uint8_t m_field2;
        debugEnumName_t* m__root;
        debugEnumName_t* m__parent;

    public:
        innerEnum1_t field1() const { return m_field1; }
        uint8_t field2() const { return m_field2; }
        debugEnumName_t* _root() const { return m__root; }
        debugEnumName_t* _parent() const { return m__parent; }
    };

private:
    testEnum1_t m_one;
    std::unique_ptr<std::vector<testEnum2_t>> m_array_of_ints;
    std::unique_ptr<testSubtype_t> m_test_type;
    debugEnumName_t* m__root;
    kaitai::kstruct* m__parent;

public:
    testEnum1_t one() const { return m_one; }
    std::vector<testEnum2_t>* array_of_ints() const { return m_array_of_ints.get(); }
    testSubtype_t* test_type() const { return m_test_type.get(); }
    debugEnumName_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};
