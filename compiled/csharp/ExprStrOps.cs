// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

using System;

namespace Kaitai
{
    public partial class ExprStrOps : KaitaiStruct
    {
        public static ExprStrOps FromFile(string fileName)
        {
            return new ExprStrOps(new KaitaiStream(fileName));
        }

        public ExprStrOps(KaitaiStream p__io, KaitaiStruct p__parent = null, ExprStrOps p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            f_oneLen = false;
            f_oneRev = false;
            f_oneSubstr0To0 = false;
            f_oneSubstr0To3 = false;
            f_oneSubstr2To5 = false;
            f_oneSubstr3To3 = false;
            f_toIAttr = false;
            f_toIR10 = false;
            f_toIR16 = false;
            f_toIR2 = false;
            f_toIR8 = false;
            f_two = false;
            f_twoLen = false;
            f_twoRev = false;
            f_twoSubstr0To10 = false;
            f_twoSubstr0To7 = false;
            f_twoSubstr4To10 = false;
            _read();
        }
        private void _read()
        {
            _one = System.Text.Encoding.GetEncoding("ASCII").GetString(m_io.ReadBytes(5));
        }
        private bool f_oneLen;
        private int _oneLen;
        public int OneLen
        {
            get
            {
                if (f_oneLen)
                    return _oneLen;
                f_oneLen = true;
                _oneLen = (int) (One.Length);
                return _oneLen;
            }
        }
        private bool f_oneRev;
        private string _oneRev;
        public string OneRev
        {
            get
            {
                if (f_oneRev)
                    return _oneRev;
                f_oneRev = true;
                _oneRev = (string) (KaitaiStream.StringReverse(One));
                return _oneRev;
            }
        }
        private bool f_oneSubstr0To0;
        private string _oneSubstr0To0;
        public string OneSubstr0To0
        {
            get
            {
                if (f_oneSubstr0To0)
                    return _oneSubstr0To0;
                f_oneSubstr0To0 = true;
                _oneSubstr0To0 = (string) (One.Substring(0, 0 - 0));
                return _oneSubstr0To0;
            }
        }
        private bool f_oneSubstr0To3;
        private string _oneSubstr0To3;
        public string OneSubstr0To3
        {
            get
            {
                if (f_oneSubstr0To3)
                    return _oneSubstr0To3;
                f_oneSubstr0To3 = true;
                _oneSubstr0To3 = (string) (One.Substring(0, 3 - 0));
                return _oneSubstr0To3;
            }
        }
        private bool f_oneSubstr2To5;
        private string _oneSubstr2To5;
        public string OneSubstr2To5
        {
            get
            {
                if (f_oneSubstr2To5)
                    return _oneSubstr2To5;
                f_oneSubstr2To5 = true;
                _oneSubstr2To5 = (string) (One.Substring(2, 5 - 2));
                return _oneSubstr2To5;
            }
        }
        private bool f_oneSubstr3To3;
        private string _oneSubstr3To3;
        public string OneSubstr3To3
        {
            get
            {
                if (f_oneSubstr3To3)
                    return _oneSubstr3To3;
                f_oneSubstr3To3 = true;
                _oneSubstr3To3 = (string) (One.Substring(3, 3 - 3));
                return _oneSubstr3To3;
            }
        }
        private bool f_toIAttr;
        private int _toIAttr;
        public int ToIAttr
        {
            get
            {
                if (f_toIAttr)
                    return _toIAttr;
                f_toIAttr = true;
                _toIAttr = (int) (Convert.ToInt64("9173", 10));
                return _toIAttr;
            }
        }
        private bool f_toIR10;
        private int _toIR10;
        public int ToIR10
        {
            get
            {
                if (f_toIR10)
                    return _toIR10;
                f_toIR10 = true;
                _toIR10 = (int) (Convert.ToInt64("-072", 10));
                return _toIR10;
            }
        }
        private bool f_toIR16;
        private int _toIR16;
        public int ToIR16
        {
            get
            {
                if (f_toIR16)
                    return _toIR16;
                f_toIR16 = true;
                _toIR16 = (int) (Convert.ToInt64("47cf", 16));
                return _toIR16;
            }
        }
        private bool f_toIR2;
        private int _toIR2;
        public int ToIR2
        {
            get
            {
                if (f_toIR2)
                    return _toIR2;
                f_toIR2 = true;
                _toIR2 = (int) (Convert.ToInt64("1010110", 2));
                return _toIR2;
            }
        }
        private bool f_toIR8;
        private int _toIR8;
        public int ToIR8
        {
            get
            {
                if (f_toIR8)
                    return _toIR8;
                f_toIR8 = true;
                _toIR8 = (int) (Convert.ToInt64("721", 8));
                return _toIR8;
            }
        }
        private bool f_two;
        private string _two;
        public string Two
        {
            get
            {
                if (f_two)
                    return _two;
                f_two = true;
                _two = (string) ("0123456789");
                return _two;
            }
        }
        private bool f_twoLen;
        private int _twoLen;
        public int TwoLen
        {
            get
            {
                if (f_twoLen)
                    return _twoLen;
                f_twoLen = true;
                _twoLen = (int) (Two.Length);
                return _twoLen;
            }
        }
        private bool f_twoRev;
        private string _twoRev;
        public string TwoRev
        {
            get
            {
                if (f_twoRev)
                    return _twoRev;
                f_twoRev = true;
                _twoRev = (string) (KaitaiStream.StringReverse(Two));
                return _twoRev;
            }
        }
        private bool f_twoSubstr0To10;
        private string _twoSubstr0To10;
        public string TwoSubstr0To10
        {
            get
            {
                if (f_twoSubstr0To10)
                    return _twoSubstr0To10;
                f_twoSubstr0To10 = true;
                _twoSubstr0To10 = (string) (Two.Substring(0, 10 - 0));
                return _twoSubstr0To10;
            }
        }
        private bool f_twoSubstr0To7;
        private string _twoSubstr0To7;
        public string TwoSubstr0To7
        {
            get
            {
                if (f_twoSubstr0To7)
                    return _twoSubstr0To7;
                f_twoSubstr0To7 = true;
                _twoSubstr0To7 = (string) (Two.Substring(0, 7 - 0));
                return _twoSubstr0To7;
            }
        }
        private bool f_twoSubstr4To10;
        private string _twoSubstr4To10;
        public string TwoSubstr4To10
        {
            get
            {
                if (f_twoSubstr4To10)
                    return _twoSubstr4To10;
                f_twoSubstr4To10 = true;
                _twoSubstr4To10 = (string) (Two.Substring(4, 10 - 4));
                return _twoSubstr4To10;
            }
        }
        private string _one;
        private ExprStrOps m_root;
        private KaitaiStruct m_parent;
        public string One { get { return _one; } }
        public ExprStrOps M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
