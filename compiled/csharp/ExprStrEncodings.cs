// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class ExprStrEncodings : KaitaiStruct
    {
        public static ExprStrEncodings FromFile(string fileName)
        {
            return new ExprStrEncodings(new KaitaiStream(fileName));
        }

        public ExprStrEncodings(KaitaiStream p__io, KaitaiStruct p__parent = null, ExprStrEncodings p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            f_str4GtStrFromBytes = false;
            f_str1Eq = false;
            f_str4Eq = false;
            f_str3EqStr2 = false;
            f_str4GtStrCalc = false;
            f_str2Eq = false;
            f_str3Eq = false;
            _read();
        }
        private void _read()
        {
            _lenOf1 = m_io.ReadU2le();
            _str1 = System.Text.Encoding.GetEncoding("ASCII").GetString(m_io.ReadBytes(LenOf1));
            _lenOf2 = m_io.ReadU2le();
            _str2 = System.Text.Encoding.GetEncoding("UTF-8").GetString(m_io.ReadBytes(LenOf2));
            _lenOf3 = m_io.ReadU2le();
            _str3 = System.Text.Encoding.GetEncoding("SJIS").GetString(m_io.ReadBytes(LenOf3));
            _lenOf4 = m_io.ReadU2le();
            _str4 = System.Text.Encoding.GetEncoding("IBM437").GetString(m_io.ReadBytes(LenOf4));
        }
        private bool f_str4GtStrFromBytes;
        private bool _str4GtStrFromBytes;
        public bool Str4GtStrFromBytes
        {
            get
            {
                if (f_str4GtStrFromBytes)
                    return _str4GtStrFromBytes;
                _str4GtStrFromBytes = (bool) ((Str4.CompareTo(System.Text.Encoding.GetEncoding("IBM437").GetString(new byte[] { 180 })) > 0));
                f_str4GtStrFromBytes = true;
                return _str4GtStrFromBytes;
            }
        }
        private bool f_str1Eq;
        private bool _str1Eq;
        public bool Str1Eq
        {
            get
            {
                if (f_str1Eq)
                    return _str1Eq;
                _str1Eq = (bool) (Str1 == "Some ASCII");
                f_str1Eq = true;
                return _str1Eq;
            }
        }
        private bool f_str4Eq;
        private bool _str4Eq;
        public bool Str4Eq
        {
            get
            {
                if (f_str4Eq)
                    return _str4Eq;
                _str4Eq = (bool) (Str4 == "\u2591\u2592\u2593");
                f_str4Eq = true;
                return _str4Eq;
            }
        }
        private bool f_str3EqStr2;
        private bool _str3EqStr2;
        public bool Str3EqStr2
        {
            get
            {
                if (f_str3EqStr2)
                    return _str3EqStr2;
                _str3EqStr2 = (bool) (Str3 == Str2);
                f_str3EqStr2 = true;
                return _str3EqStr2;
            }
        }
        private bool f_str4GtStrCalc;
        private bool _str4GtStrCalc;
        public bool Str4GtStrCalc
        {
            get
            {
                if (f_str4GtStrCalc)
                    return _str4GtStrCalc;
                _str4GtStrCalc = (bool) ((Str4.CompareTo("\u2524") > 0));
                f_str4GtStrCalc = true;
                return _str4GtStrCalc;
            }
        }
        private bool f_str2Eq;
        private bool _str2Eq;
        public bool Str2Eq
        {
            get
            {
                if (f_str2Eq)
                    return _str2Eq;
                _str2Eq = (bool) (Str2 == "\u3053\u3093\u306b\u3061\u306f");
                f_str2Eq = true;
                return _str2Eq;
            }
        }
        private bool f_str3Eq;
        private bool _str3Eq;
        public bool Str3Eq
        {
            get
            {
                if (f_str3Eq)
                    return _str3Eq;
                _str3Eq = (bool) (Str3 == "\u3053\u3093\u306b\u3061\u306f");
                f_str3Eq = true;
                return _str3Eq;
            }
        }
        private ushort _lenOf1;
        private string _str1;
        private ushort _lenOf2;
        private string _str2;
        private ushort _lenOf3;
        private string _str3;
        private ushort _lenOf4;
        private string _str4;
        private ExprStrEncodings m_root;
        private KaitaiStruct m_parent;
        public ushort LenOf1 { get { return _lenOf1; } }
        public string Str1 { get { return _str1; } }
        public ushort LenOf2 { get { return _lenOf2; } }
        public string Str2 { get { return _str2; } }
        public ushort LenOf3 { get { return _lenOf3; } }
        public string Str3 { get { return _str3; } }
        public ushort LenOf4 { get { return _lenOf4; } }
        public string Str4 { get { return _str4; } }
        public ExprStrEncodings M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
