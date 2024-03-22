// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

using System;

namespace Kaitai
{
    public partial class ExprOpsParens : KaitaiStruct
    {
        public static ExprOpsParens FromFile(string fileName)
        {
            return new ExprOpsParens(new KaitaiStream(fileName));
        }

        public ExprOpsParens(KaitaiStream p__io, KaitaiStruct p__parent = null, ExprOpsParens p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            f_boolAnd = false;
            f_boolEq = false;
            f_boolOr = false;
            f_f2pi = false;
            f_fE = false;
            f_fSumToInt = false;
            f_i42 = false;
            f_iM13 = false;
            f_iSumToStr = false;
            f_str0To4 = false;
            f_str5To9 = false;
            f_strConcatLen = false;
            f_strConcatRev = false;
            f_strConcatSubstr2To7 = false;
            f_strConcatToI = false;
            _read();
        }
        private void _read()
        {
        }
        private bool f_boolAnd;
        private int _boolAnd;
        public int BoolAnd
        {
            get
            {
                if (f_boolAnd)
                    return _boolAnd;
                _boolAnd = (int) (( ((false) && (true))  ? 1 : 0));
                f_boolAnd = true;
                return _boolAnd;
            }
        }
        private bool f_boolEq;
        private int _boolEq;
        public int BoolEq
        {
            get
            {
                if (f_boolEq)
                    return _boolEq;
                _boolEq = (int) ((false == true ? 1 : 0));
                f_boolEq = true;
                return _boolEq;
            }
        }
        private bool f_boolOr;
        private int _boolOr;
        public int BoolOr
        {
            get
            {
                if (f_boolOr)
                    return _boolOr;
                _boolOr = (int) (( ((!(false)) || (false))  ? 1 : 0));
                f_boolOr = true;
                return _boolOr;
            }
        }
        private bool f_f2pi;
        private double _f2pi;
        public double F2pi
        {
            get
            {
                if (f_f2pi)
                    return _f2pi;
                _f2pi = (double) (6.28);
                f_f2pi = true;
                return _f2pi;
            }
        }
        private bool f_fE;
        private double _fE;
        public double FE
        {
            get
            {
                if (f_fE)
                    return _fE;
                _fE = (double) (2.72);
                f_fE = true;
                return _fE;
            }
        }
        private bool f_fSumToInt;
        private int _fSumToInt;
        public int FSumToInt
        {
            get
            {
                if (f_fSumToInt)
                    return _fSumToInt;
                _fSumToInt = (int) ((long) (F2pi + FE));
                f_fSumToInt = true;
                return _fSumToInt;
            }
        }
        private bool f_i42;
        private sbyte _i42;
        public sbyte I42
        {
            get
            {
                if (f_i42)
                    return _i42;
                _i42 = (sbyte) (42);
                f_i42 = true;
                return _i42;
            }
        }
        private bool f_iM13;
        private int _iM13;
        public int IM13
        {
            get
            {
                if (f_iM13)
                    return _iM13;
                _iM13 = (int) (-13);
                f_iM13 = true;
                return _iM13;
            }
        }
        private bool f_iSumToStr;
        private string _iSumToStr;
        public string ISumToStr
        {
            get
            {
                if (f_iSumToStr)
                    return _iSumToStr;
                _iSumToStr = (string) ((I42 + IM13).ToString());
                f_iSumToStr = true;
                return _iSumToStr;
            }
        }
        private bool f_str0To4;
        private string _str0To4;
        public string Str0To4
        {
            get
            {
                if (f_str0To4)
                    return _str0To4;
                _str0To4 = (string) ("01234");
                f_str0To4 = true;
                return _str0To4;
            }
        }
        private bool f_str5To9;
        private string _str5To9;
        public string Str5To9
        {
            get
            {
                if (f_str5To9)
                    return _str5To9;
                _str5To9 = (string) ("56789");
                f_str5To9 = true;
                return _str5To9;
            }
        }
        private bool f_strConcatLen;
        private int _strConcatLen;
        public int StrConcatLen
        {
            get
            {
                if (f_strConcatLen)
                    return _strConcatLen;
                _strConcatLen = (int) ((Str0To4 + Str5To9).Length);
                f_strConcatLen = true;
                return _strConcatLen;
            }
        }
        private bool f_strConcatRev;
        private string _strConcatRev;
        public string StrConcatRev
        {
            get
            {
                if (f_strConcatRev)
                    return _strConcatRev;
                _strConcatRev = (string) (KaitaiStream.StringReverse(Str0To4 + Str5To9));
                f_strConcatRev = true;
                return _strConcatRev;
            }
        }
        private bool f_strConcatSubstr2To7;
        private string _strConcatSubstr2To7;
        public string StrConcatSubstr2To7
        {
            get
            {
                if (f_strConcatSubstr2To7)
                    return _strConcatSubstr2To7;
                _strConcatSubstr2To7 = (string) ((Str0To4 + Str5To9).Substring(2, 7 - 2));
                f_strConcatSubstr2To7 = true;
                return _strConcatSubstr2To7;
            }
        }
        private bool f_strConcatToI;
        private int _strConcatToI;
        public int StrConcatToI
        {
            get
            {
                if (f_strConcatToI)
                    return _strConcatToI;
                _strConcatToI = (int) (Convert.ToInt64(Str0To4 + Str5To9, 10));
                f_strConcatToI = true;
                return _strConcatToI;
            }
        }
        private ExprOpsParens m_root;
        private KaitaiStruct m_parent;
        public ExprOpsParens M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
