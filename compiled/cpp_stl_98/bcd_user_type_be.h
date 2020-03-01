#ifndef BCD_USER_TYPE_BE_H_
#define BCD_USER_TYPE_BE_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class bcdUserTypeBe_t : public kaitai::kstruct {

public:
    class ltrObj_t;
    class rtlObj_t;
    class leadingZeroLtrObj_t;

    bcdUserTypeBe_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, bcdUserTypeBe_t* p__root = 0);

private:
    void _read();

public:
    ~bcdUserTypeBe_t();

    class ltrObj_t : public kaitai::kstruct {

    public:

        ltrObj_t(kaitai::kstream* p__io, bcdUserTypeBe_t* p__parent = 0, bcdUserTypeBe_t* p__root = 0);

    private:
        void _read();

    public:
        ~ltrObj_t();

    private:
        bool f_as_int;
        int32_t m_as_int;

    public:
        int32_t as_int();

    private:
        bool f_digit2;
        int32_t m_digit2;

    public:
        int32_t digit2();

    private:
        bool f_digit4;
        int32_t m_digit4;

    public:
        int32_t digit4();

    private:
        bool f_digit3;
        int32_t m_digit3;

    public:
        int32_t digit3();

    private:
        bool f_digit5;
        int32_t m_digit5;

    public:
        int32_t digit5();

    private:
        bool f_digit8;
        int32_t m_digit8;

    public:
        int32_t digit8();

    private:
        bool f_digit6;
        int32_t m_digit6;

    public:
        int32_t digit6();

    private:
        bool f_as_str;
        std::string m_as_str;

    public:
        std::string as_str();

    private:
        bool f_digit1;
        int32_t m_digit1;

    public:
        int32_t digit1();

    private:
        bool f_digit7;
        int32_t m_digit7;

    public:
        int32_t digit7();

    private:
        uint8_t m_b1;
        uint8_t m_b2;
        uint8_t m_b3;
        uint8_t m_b4;
        bcdUserTypeBe_t* m__root;
        bcdUserTypeBe_t* m__parent;

    public:
        uint8_t b1() const { return m_b1; }
        uint8_t b2() const { return m_b2; }
        uint8_t b3() const { return m_b3; }
        uint8_t b4() const { return m_b4; }
        bcdUserTypeBe_t* _root() const { return m__root; }
        bcdUserTypeBe_t* _parent() const { return m__parent; }
    };

    class rtlObj_t : public kaitai::kstruct {

    public:

        rtlObj_t(kaitai::kstream* p__io, bcdUserTypeBe_t* p__parent = 0, bcdUserTypeBe_t* p__root = 0);

    private:
        void _read();

    public:
        ~rtlObj_t();

    private:
        bool f_as_int;
        int32_t m_as_int;

    public:
        int32_t as_int();

    private:
        bool f_digit2;
        int32_t m_digit2;

    public:
        int32_t digit2();

    private:
        bool f_digit4;
        int32_t m_digit4;

    public:
        int32_t digit4();

    private:
        bool f_digit3;
        int32_t m_digit3;

    public:
        int32_t digit3();

    private:
        bool f_digit5;
        int32_t m_digit5;

    public:
        int32_t digit5();

    private:
        bool f_digit8;
        int32_t m_digit8;

    public:
        int32_t digit8();

    private:
        bool f_digit6;
        int32_t m_digit6;

    public:
        int32_t digit6();

    private:
        bool f_as_str;
        std::string m_as_str;

    public:
        std::string as_str();

    private:
        bool f_digit1;
        int32_t m_digit1;

    public:
        int32_t digit1();

    private:
        bool f_digit7;
        int32_t m_digit7;

    public:
        int32_t digit7();

    private:
        uint8_t m_b1;
        uint8_t m_b2;
        uint8_t m_b3;
        uint8_t m_b4;
        bcdUserTypeBe_t* m__root;
        bcdUserTypeBe_t* m__parent;

    public:
        uint8_t b1() const { return m_b1; }
        uint8_t b2() const { return m_b2; }
        uint8_t b3() const { return m_b3; }
        uint8_t b4() const { return m_b4; }
        bcdUserTypeBe_t* _root() const { return m__root; }
        bcdUserTypeBe_t* _parent() const { return m__parent; }
    };

    class leadingZeroLtrObj_t : public kaitai::kstruct {

    public:

        leadingZeroLtrObj_t(kaitai::kstream* p__io, bcdUserTypeBe_t* p__parent = 0, bcdUserTypeBe_t* p__root = 0);

    private:
        void _read();

    public:
        ~leadingZeroLtrObj_t();

    private:
        bool f_as_int;
        int32_t m_as_int;

    public:
        int32_t as_int();

    private:
        bool f_digit2;
        int32_t m_digit2;

    public:
        int32_t digit2();

    private:
        bool f_digit4;
        int32_t m_digit4;

    public:
        int32_t digit4();

    private:
        bool f_digit3;
        int32_t m_digit3;

    public:
        int32_t digit3();

    private:
        bool f_digit5;
        int32_t m_digit5;

    public:
        int32_t digit5();

    private:
        bool f_digit8;
        int32_t m_digit8;

    public:
        int32_t digit8();

    private:
        bool f_digit6;
        int32_t m_digit6;

    public:
        int32_t digit6();

    private:
        bool f_as_str;
        std::string m_as_str;

    public:
        std::string as_str();

    private:
        bool f_digit1;
        int32_t m_digit1;

    public:
        int32_t digit1();

    private:
        bool f_digit7;
        int32_t m_digit7;

    public:
        int32_t digit7();

    private:
        uint8_t m_b1;
        uint8_t m_b2;
        uint8_t m_b3;
        uint8_t m_b4;
        bcdUserTypeBe_t* m__root;
        bcdUserTypeBe_t* m__parent;

    public:
        uint8_t b1() const { return m_b1; }
        uint8_t b2() const { return m_b2; }
        uint8_t b3() const { return m_b3; }
        uint8_t b4() const { return m_b4; }
        bcdUserTypeBe_t* _root() const { return m__root; }
        bcdUserTypeBe_t* _parent() const { return m__parent; }
    };

private:
    ltrObj_t* m_ltr;
    rtlObj_t* m_rtl;
    leadingZeroLtrObj_t* m_leading_zero_ltr;
    bcdUserTypeBe_t* m__root;
    kaitai::kstruct* m__parent;
    std::string m__raw_ltr;
    kaitai::kstream* m__io__raw_ltr;
    std::string m__raw_rtl;
    kaitai::kstream* m__io__raw_rtl;
    std::string m__raw_leading_zero_ltr;
    kaitai::kstream* m__io__raw_leading_zero_ltr;

public:
    ltrObj_t* ltr() const { return m_ltr; }
    rtlObj_t* rtl() const { return m_rtl; }
    leadingZeroLtrObj_t* leading_zero_ltr() const { return m_leading_zero_ltr; }
    bcdUserTypeBe_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
    std::string _raw_ltr() const { return m__raw_ltr; }
    kaitai::kstream* _io__raw_ltr() const { return m__io__raw_ltr; }
    std::string _raw_rtl() const { return m__raw_rtl; }
    kaitai::kstream* _io__raw_rtl() const { return m__io__raw_rtl; }
    std::string _raw_leading_zero_ltr() const { return m__raw_leading_zero_ltr; }
    kaitai::kstream* _io__raw_leading_zero_ltr() const { return m__io__raw_leading_zero_ltr; }
};

#endif  // BCD_USER_TYPE_BE_H_
